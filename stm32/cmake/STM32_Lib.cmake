###################################################

# Definitions for the STM32F4 Standard Peripheral Library

#set(PERIPHLIBURL  http://www.st.com/st-web-ui/static/active/en/st_prod_software_internet/resource/technical/software/firmware)
#set(PERIPHLIBZIP  stm32f4_dsp_stdperiph_lib.zip)
set(PERIPHLIBVER    1.8.0)
set(PERIPHLIBNAME   STM32F4xx_DSP_StdPeriph_Lib_V)

if(NOT PERIPHLIBDIR)
    set(PERIPHLIBDIR    ${CMAKE_SOURCE_DIR}/${PERIPHLIBNAME}${PERIPHLIBVER})
    message(STATUS "Using default path for StdPeriph Lib: ${PERIPHLIBDIR}")
endif()

set(CMSIS           ${PERIPHLIBDIR}/Libraries/CMSIS)
set(STM32F4LIB      ${PERIPHLIBDIR}/Libraries/STM32F4xx_StdPeriph_Driver)
set(STM32F4TEMPLATE ${PERIPHLIBDIR}/Project/STM32F4xx_StdPeriph_Templates)
set(DSPLIB          ${PERIPHLIBDIR}/Libraries/CMSIS/DSP_Lib)

add_definitions(-DUSE_STDPERIPH_DRIVER -DARM_MATH_CM4)
include_directories(${STM32F4LIB}/inc ${STM32F4TEMPLATE}
    ${CMSIS}/Include ${CMSIS}/Device/ST/STM32F4xx/Include)


set(STM32F4LIB_SRCS
${STM32F4LIB}/src/misc.c
${STM32F4LIB}/src/stm32f4xx_adc.c
${STM32F4LIB}/src/stm32f4xx_can.c
${STM32F4LIB}/src/stm32f4xx_cec.c
${STM32F4LIB}/src/stm32f4xx_crc.c
${STM32F4LIB}/src/stm32f4xx_cryp_aes.c
${STM32F4LIB}/src/stm32f4xx_cryp.c
${STM32F4LIB}/src/stm32f4xx_cryp_des.c
${STM32F4LIB}/src/stm32f4xx_cryp_tdes.c
${STM32F4LIB}/src/stm32f4xx_dac.c
${STM32F4LIB}/src/stm32f4xx_dbgmcu.c
${STM32F4LIB}/src/stm32f4xx_dcmi.c
${STM32F4LIB}/src/stm32f4xx_dma2d.c
${STM32F4LIB}/src/stm32f4xx_dma.c
${STM32F4LIB}/src/stm32f4xx_exti.c
${STM32F4LIB}/src/stm32f4xx_flash.c
${STM32F4LIB}/src/stm32f4xx_flash_ramfunc.c
${STM32F4LIB}/src/stm32f4xx_fmpi2c.c
${STM32F4LIB}/src/stm32f4xx_fsmc.c
${STM32F4LIB}/src/stm32f4xx_gpio.c
${STM32F4LIB}/src/stm32f4xx_hash.c
${STM32F4LIB}/src/stm32f4xx_hash_md5.c
${STM32F4LIB}/src/stm32f4xx_hash_sha1.c
${STM32F4LIB}/src/stm32f4xx_i2c.c
${STM32F4LIB}/src/stm32f4xx_iwdg.c
${STM32F4LIB}/src/stm32f4xx_ltdc.c
${STM32F4LIB}/src/stm32f4xx_pwr.c
${STM32F4LIB}/src/stm32f4xx_qspi.c
${STM32F4LIB}/src/stm32f4xx_rcc.c
${STM32F4LIB}/src/stm32f4xx_rng.c
${STM32F4LIB}/src/stm32f4xx_rtc.c
${STM32F4LIB}/src/stm32f4xx_sai.c
${STM32F4LIB}/src/stm32f4xx_sdio.c
${STM32F4LIB}/src/stm32f4xx_spdifrx.c
${STM32F4LIB}/src/stm32f4xx_spi.c
${STM32F4LIB}/src/stm32f4xx_syscfg.c
${STM32F4LIB}/src/stm32f4xx_tim.c
${STM32F4LIB}/src/stm32f4xx_usart.c
${STM32F4LIB}/src/stm32f4xx_wwdg.c
# Not compiling for now
# $(STM32F4LIB)/src/stm32f4xx_fmc.c
)

add_library(stm32f4 STATIC ${STM32F4LIB_SRCS})


set(CMSIS_SRCS
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.c
${CMSIS}/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.c
${CMSIS}/DSP_Lib/Source/CommonTables/arm_common_tables.c
${CMSIS}/DSP_Lib/Source/CommonTables/arm_const_structs.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
${CMSIS}/DSP_Lib/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.c
${CMSIS}/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.c
${CMSIS}/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_fast_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_fast_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_opt_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_opt_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_partial_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_conv_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_fast_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_fast_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_opt_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_opt_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_correlate_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_decimate_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_fast_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_fast_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_init_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_interpolate_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_interpolate_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_interpolate_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_lattice_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_lattice_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_lattice_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_fir_sparse_q7.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_iir_lattice_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_iir_lattice_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_iir_lattice_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_norm_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_norm_init_f32.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_norm_init_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_norm_init_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_norm_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_norm_q31.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_q15.c
${CMSIS}/DSP_Lib/Source/FilteringFunctions/arm_lms_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_add_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_add_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_add_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_init_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_init_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_init_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_inverse_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_inverse_f64.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_mult_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_mult_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_mult_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_scale_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_scale_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_scale_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_sub_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_sub_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_sub_q31.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_trans_f32.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_trans_q15.c
${CMSIS}/DSP_Lib/Source/MatrixFunctions/arm_mat_trans_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.c
${CMSIS}/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_copy_f32.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_copy_q15.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_copy_q31.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_copy_q7.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_fill_f32.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_fill_q15.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_fill_q31.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_fill_q7.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_float_to_q15.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_float_to_q31.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_float_to_q7.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q15_to_float.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q15_to_q31.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q15_to_q7.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q31_to_float.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q31_to_q15.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q31_to_q7.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q7_to_float.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q7_to_q15.c
${CMSIS}/DSP_Lib/Source/SupportFunctions/arm_q7_to_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_bitreversal.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.S
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.c
${CMSIS}/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.c
)

add_library(CMSIS STATIC ${CMSIS_SRCS})
