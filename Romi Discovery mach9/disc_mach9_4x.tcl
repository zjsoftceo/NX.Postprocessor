########################## TCL Event Handlers ##########################
#
#  Created by edson.kawakita  @  Tue May 25 15:56:44 2004 E. South America Daylight Time
#  with Post Builder version  3.2.0.
#
########################################################################

  set cam_post_dir [MOM_ask_env_var UGII_CAM_POST_DIR]


  if { ![info exists mom_sys_post_initialized] } {

     source ${cam_post_dir}ugpost_base.tcl
 
     proc MOM_before_each_add_var {} {}
     proc MOM_before_each_event {} {}
 
#     set cam_debug_dir [MOM_ask_env_var UGII_CAM_DEBUG_DIR]
#     source ${cam_debug_dir}mom_review.tcl
 
     MOM_set_debug_mode OFF


   ####  Listing File variables 
     set mom_sys_list_output                       "OFF"
     set mom_sys_header_output                     "OFF"
     set mom_sys_list_file_rows                    "40" 
     set mom_sys_list_file_columns                 "30" 
     set mom_sys_warning_output                    "OFF"
     set mom_sys_group_output                      "OFF"
     set mom_sys_list_file_suffix                  "lpt"
     set mom_sys_output_file_suffix                "ptp"
     set mom_sys_commentary_output                 "ON" 
     set mom_sys_commentary_list                   "x y z 4axis 5axis feed speed"

     set mom_sys_control_out                       "("  
     set mom_sys_control_in                        ")"  

     set mom_sys_post_initialized 1
  }


########## SYSTEM VARIABLE DECLARATIONS ##############
  set mom_sys_rapid_code                        "0"  
  set mom_sys_linear_code                       "1"  
  set mom_sys_circle_code(CLW)                  "2"  
  set mom_sys_circle_code(CCLW)                 "3"  
  set mom_sys_delay_code(SECONDS)               "4"  
  set mom_sys_delay_code(REVOLUTIONS)           "4"  
  set mom_sys_cutcom_plane_code(XY)             "17" 
  set mom_sys_cutcom_plane_code(ZX)             "18" 
  set mom_sys_cutcom_plane_code(XZ)             "18" 
  set mom_sys_cutcom_plane_code(YZ)             "19" 
  set mom_sys_cutcom_plane_code(ZY)             "19" 
  set mom_sys_cutcom_code(OFF)                  "40" 
  set mom_sys_cutcom_code(LEFT)                 "41" 
  set mom_sys_cutcom_code(RIGHT)                "42" 
  set mom_sys_adjust_code                       "43" 
  set mom_sys_adjust_code_minus                 "44" 
  set mom_sys_adjust_cancel_code                "49" 
  set mom_sys_unit_code(IN)                     "70" 
  set mom_sys_unit_code(MM)                     "71" 
  set mom_sys_cycle_start_code                  "79" 
  set mom_sys_cycle_off                         "80" 
  set mom_sys_cycle_drill_code                  "81" 
  set mom_sys_cycle_drill_dwell_code            "82" 
  set mom_sys_cycle_drill_deep_code             "83" 
  set mom_sys_cycle_drill_break_chip_code       "73" 
  set mom_sys_cycle_tap_code                    "84" 
  set mom_sys_cycle_bore_code                   "85" 
  set mom_sys_cycle_bore_drag_code              "86" 
  set mom_sys_cycle_bore_no_drag_code           "76" 
  set mom_sys_cycle_bore_dwell_code             "89" 
  set mom_sys_cycle_bore_manual_code            "88" 
  set mom_sys_cycle_bore_back_code              "87" 
  set mom_sys_cycle_bore_manual_dwell_code      "89" 
  set mom_sys_output_code(ABSOLUTE)             "90" 
  set mom_sys_output_code(INCREMENTAL)          "91" 
  set mom_sys_cycle_ret_code(AUTO)              "98" 
  set mom_sys_cycle_ret_code(MANUAL)            "99" 
  set mom_sys_reset_code                        "92" 
  set mom_sys_feed_rate_mode_code(IPM)          "94" 
  set mom_sys_feed_rate_mode_code(IPR)          "95" 
  set mom_sys_feed_rate_mode_code(FRN)          "93" 
  set mom_sys_spindle_mode_code(SFM)            "96" 
  set mom_sys_spindle_mode_code(RPM)            "97" 
  set mom_sys_return_code                       "28" 
  set mom_sys_feed_rate_mode_code(DPM)          "94" 
  set mom_sys_feed_rate_mode_code(MMPM)         "94" 
  set mom_sys_feed_rate_mode_code(MMPR)         "95" 
  set mom_sys_program_stop_code                 "0"  
  set mom_sys_optional_stop_code                "1"  
  set mom_sys_end_of_program_code               "2"  
  set mom_sys_spindle_direction_code(CLW)       "3"  
  set mom_sys_spindle_direction_code(CCLW)      "4"  
  set mom_sys_spindle_direction_code(OFF)       "5"  
  set mom_sys_tool_change_code                  "6"  
  set mom_sys_coolant_code(ON)                  "8"  
  set mom_sys_coolant_code(FLOOD)               "8"  
  set mom_sys_coolant_code(MIST)                "7"  
  set mom_sys_coolant_code(THRU)                "26" 
  set mom_sys_coolant_code(TAP)                 "8"  
  set mom_sys_coolant_code(OFF)                 "9"  
  set mom_sys_rewind_code                       "30" 
  set mom_sys_sim_cycle_drill                   "1"  
  set mom_sys_sim_cycle_drill_dwell             "1"  
  set mom_sys_sim_cycle_drill_deep              "1"  
  set mom_sys_sim_cycle_drill_break_chip        "0"  
  set mom_sys_sim_cycle_tap                     "1"  
  set mom_sys_sim_cycle_bore                    "1"  
  set mom_sys_sim_cycle_bore_drag               "1"  
  set mom_sys_sim_cycle_bore_nodrag             "0"  
  set mom_sys_sim_cycle_bore_manual             "0"  
  set mom_sys_sim_cycle_bore_dwell              "0"  
  set mom_sys_sim_cycle_bore_manual_dwell       "0"  
  set mom_sys_sim_cycle_bore_back               "0"  
  set mom_sys_cir_vector                        "Vector - Arc Start to Center"
  set mom_sys_spindle_ranges                    "0"  
  set mom_sys_rewind_stop_code                  "\#" 
  set mom_sys_home_pos(0)                       "0"  
  set mom_sys_home_pos(1)                       "0"  
  set mom_sys_home_pos(2)                       "0"  
  set mom_sys_zero                              "0"  
  set mom_sys_opskip_block_leader               "/"  
  set mom_sys_seqnum_start                      "5"  
  set mom_sys_seqnum_incr                       "5"  
  set mom_sys_seqnum_freq                       "1"  
  set mom_sys_seqnum_max                        "9999"
  set mom_sys_lathe_x_double                    "1"  
  set mom_sys_lathe_i_double                    "1"  
  set mom_sys_lathe_x_factor                    "1"  
  set mom_sys_lathe_y_factor                    "1"  
  set mom_sys_lathe_z_factor                    "1"  
  set mom_sys_leader(N)                         "N"  
  set mom_sys_leader(X)                         "X"  
  set mom_sys_leader(Y)                         "Y"  
  set mom_sys_leader(Z)                         "Z"  
  set mom_sys_leader(fourth_axis)               "W"  
  set mom_sys_leader(fifth_axis)                "B"  
  set mom_sys_contour_feed_mode(LINEAR)         "MMPM"
  set mom_sys_rapid_feed_mode(LINEAR)           "MMPM"
  set mom_sys_cycle_feed_mode                   "MMPM"
  set mom_sys_feed_param(IPM,format)            "Feed_IPM"
  set mom_sys_feed_param(IPR,format)            "Feed_IPR"
  set mom_sys_feed_param(FRN,format)            "Feed_INV"
  set mom_sys_vnc_rapid_dogleg                  "1"  
  set mom_sys_prev_mach_head                    ""   
  set mom_sys_curr_mach_head                    ""   
  set mom_sys_contour_feed_mode(ROTARY)         "MMPM"
  set mom_sys_contour_feed_mode(LINEAR_ROTARY)  "MMPM"
  set mom_sys_feed_param(DPM,format)            "Feed_DPM"
  set mom_sys_rapid_feed_mode(ROTARY)           "MMPM"
  set mom_sys_rapid_feed_mode(LINEAR_ROTARY)    "MMPM"
  set mom_sys_retract_distance                  "10" 
  set mom_sys_feed_param(MMPM,format)           "Feed_MMPM"
  set mom_sys_feed_param(MMPR,format)           "Feed_MMPR"

####### KINEMATIC VARIABLE DECLARATIONS ##############
  set mom_kin_4th_axis_ang_offset               "0.0"
  set mom_kin_4th_axis_center_offset(0)         "0.0"
  set mom_kin_4th_axis_center_offset(1)         "0.0"
  set mom_kin_4th_axis_center_offset(2)         "0.0"
  set mom_kin_4th_axis_direction                "MAGNITUDE_DETERMINES_DIRECTION"
  set mom_kin_4th_axis_incr_switch              "OFF"
  set mom_kin_4th_axis_leader                   "W"  
  set mom_kin_4th_axis_limit_action             "Warning"
  set mom_kin_4th_axis_max_limit                "360"
  set mom_kin_4th_axis_min_incr                 "0.001"
  set mom_kin_4th_axis_min_limit                "0"  
  set mom_kin_4th_axis_plane                    "YZ" 
  set mom_kin_4th_axis_rotation                 "standard"
  set mom_kin_4th_axis_type                     "Table"
  set mom_kin_4th_axis_zero                     "0.0"
  set mom_kin_5th_axis_ang_offset               "0.0"
  set mom_kin_5th_axis_center_offset(0)         "0.0"
  set mom_kin_5th_axis_center_offset(1)         "0.0"
  set mom_kin_5th_axis_center_offset(2)         "0.0"
  set mom_kin_5th_axis_direction                "MAGNITUDE_DETERMINES_DIRECTION"
  set mom_kin_5th_axis_incr_switch              "OFF"
  set mom_kin_5th_axis_leader                   "B"  
  set mom_kin_5th_axis_limit_action             "Warning"
  set mom_kin_5th_axis_max_limit                "360"
  set mom_kin_5th_axis_min_incr                 "0.001"
  set mom_kin_5th_axis_min_limit                "0"  
  set mom_kin_5th_axis_plane                    "ZX" 
  set mom_kin_5th_axis_rotation                 "standard"
  set mom_kin_5th_axis_type                     "Table"
  set mom_kin_5th_axis_zero                     "0.0"
  set mom_kin_arc_output_mode                   "FULL_CIRCLE"
  set mom_kin_arc_valid_plane                   "XYZ"
  set mom_kin_clamp_time                        "2.0"
  set mom_kin_flush_time                        "2.0"
  set mom_kin_linearization_flag                "1"  
  set mom_kin_linearization_tol                 "0.001"
  set mom_kin_machine_resolution                ".001"
  set mom_kin_machine_type                      "4_axis_table"
  set mom_kin_max_arc_radius                    "99999.999"
  set mom_kin_max_dpm                           "100"
  set mom_kin_max_fpm                           "15000"
  set mom_kin_max_fpr                           "1000"
  set mom_kin_max_frn                           "1000"
  set mom_kin_min_arc_length                    "0.001"
  set mom_kin_min_arc_radius                    "0.001"
  set mom_kin_min_dpm                           "0.0"
  set mom_kin_min_fpm                           "0.1"
  set mom_kin_min_fpr                           "0.1"
  set mom_kin_min_frn                           "0.01"
  set mom_kin_output_unit                       "MM" 
  set mom_kin_pivot_gauge_offset                "0.0"
  set mom_kin_pivot_guage_offset                ""   
  set mom_kin_post_data_unit                    "MM" 
  set mom_kin_rapid_feed_rate                   "10000"
  set mom_kin_retract_distance                  "500"
  set mom_kin_tool_change_time                  ""   
  set mom_kin_x_axis_limit                      "1000"
  set mom_kin_y_axis_limit                      "1000"
  set mom_kin_z_axis_limit                      "1000"




if [llength [info commands MOM_SYS_do_template] ] {
   if [llength [info commands MOM_do_template] ] {
      rename MOM_do_template ""
   }
   rename MOM_SYS_do_template MOM_do_template
}




#=============================================================
proc MOM_start_of_program { } {
#=============================================================
  global mom_logname mom_date is_from
  global mom_coolant_status mom_cutcom_status
  global mom_clamp_status mom_cycle_status
  global mom_spindle_status mom_cutcom_plane pb_start_of_program_flag
  global mom_cutcom_adjust_register mom_tool_adjust_register
  global mom_tool_length_adjust_register mom_length_comp_register
  global mom_flush_register mom_wire_cutcom_adjust_register
  global mom_wire_cutcom_status

    set pb_start_of_program_flag 0
    set mom_coolant_status UNDEFINED
    set mom_cutcom_status  UNDEFINED
    set mom_clamp_status   UNDEFINED
    set mom_cycle_status   UNDEFINED
    set mom_spindle_status UNDEFINED
    set mom_cutcom_plane   UNDEFINED
    set mom_wire_cutcom_status  UNDEFINED

    catch {unset mom_cutcom_adjust_register}
    catch {unset mom_tool_adjust_register}
    catch {unset mom_tool_length_adjust_register}
    catch {unset mom_length_comp_register}
    catch {unset mom_flush_register}
    catch {unset mom_wire_cutcom_adjust_register}

    set is_from ""

    OPEN_files ; #open warning and listing files
    LIST_FILE_HEADER ; #list header in commentary listing



  global mom_sys_post_initialized
  if { $mom_sys_post_initialized > 1 } { return }


#************
uplevel #0 {


#=============================================================
proc MOM_set_csys {} {
#=============================================================
  if [llength [info commands PB_CMD_kin_set_csys] ] {
    PB_CMD_kin_set_csys
  }
}


#=============================================================
proc MOM_msys {} {
#=============================================================
}


#=============================================================
proc MOM_end_of_program { } {
#=============================================================
   PB_CMD_nurbs_end_of_program
   MOM_do_template end_of_program
   MOM_set_seq_off
   MOM_do_template rewind_stop_code

#**** The following procedure lists the tool list with time in commentary data
   LIST_FILE_TRAILER

#**** The following procedure closes the warning and listing files
   CLOSE_files
}


  incr mom_sys_post_initialized


} ;# uplevel
#***********


}


#=============================================================
proc PB_DELAY_TIME_SET { } {
#=============================================================
  global mom_sys_delay_param mom_delay_value
  global mom_delay_revs mom_delay_mode delay_time

   # post builder provided format for the current mode:
    if {[info exists mom_sys_delay_param(${mom_delay_mode},format)] != 0} {
      MOM_set_address_format dwell $mom_sys_delay_param(${mom_delay_mode},format)
    }

    switch $mom_delay_mode {
      SECONDS {set delay_time $mom_delay_value}
      default {set delay_time $mom_delay_revs}
    }
}


#=============================================================
proc MOM_before_motion { } {
#=============================================================
  global mom_motion_event mom_motion_type

    FEEDRATE_SET


    switch $mom_motion_type {
      ENGAGE   {PB_engage_move}
      APPROACH {PB_approach_move}
      FIRSTCUT {PB_first_cut}
      RETRACT  {PB_retract_move}
      RETURN   {PB_return_move}
    }

    if [llength [info commands PB_CMD_kin_before_motion] ] { PB_CMD_kin_before_motion }
    if [llength [info commands PB_CMD_before_motion] ]     { PB_CMD_before_motion }
}


#=============================================================
proc MOM_start_of_group {} {
#=============================================================
  global mom_sys_group_output mom_group_name group_level ptp_file_name
  global mom_sequence_number mom_sequence_increment mom_sequence_frequency
  global mom_sys_ptp_output pb_start_of_program_flag

    if {![hiset group_level]} {set group_level 0 ; return}

    if {[hiset mom_sys_group_output]} {if {$mom_sys_group_output == "OFF"} {set group_level 0 ; return}}

    if {[hiset group_level]} {incr group_level} else {set group_level 1}
    if {$group_level > 1} {return}

    SEQNO_RESET ; #<4133654>
    MOM_reset_sequence $mom_sequence_number $mom_sequence_increment $mom_sequence_frequency

    if {[info exists ptp_file_name]} {
      MOM_close_output_file $ptp_file_name ; MOM_start_of_program
      if {$mom_sys_ptp_output == "ON"} {MOM_open_output_file $ptp_file_name }
    } else {
      MOM_start_of_program
    }

    PB_start_of_program ; set pb_start_of_program_flag 1
}


#=============================================================
proc MOM_machine_mode {} {
#=============================================================
  global pb_start_of_program_flag
  global mom_operation_name mom_sys_change_mach_operation_name

   set mom_sys_change_mach_operation_name $mom_operation_name

    if {$pb_start_of_program_flag == 0} {PB_start_of_program ; set pb_start_of_program_flag 1}

    if [llength [info commands PB_machine_mode] ] {
       if [catch {PB_machine_mode} res] {
          global mom_warning_info
          set mom_warning_info "$res"
          MOM_catch_warning
       }
    }
}


#=============================================================
proc PB_FORCE { option args } {
#=============================================================
   set adds [join $args]
   if { [info exists option] && [llength $adds] } {
      lappend cmd MOM_force
      lappend cmd $option
      lappend cmd [join $adds]
      eval [join $cmd]
   }
}


#=============================================================
proc PB_SET_RAPID_MOD { mod_list blk_list ADDR NEW_MOD_LIST } {
#=============================================================
  upvar $ADDR addr
  upvar $NEW_MOD_LIST new_mod_list
  global mom_cycle_spindle_axis traverse_axis1 traverse_axis2


   set new_mod_list [list]

   foreach mod $mod_list {
      switch $mod {
         "rapid1" {
            set elem $addr($traverse_axis1)
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
         "rapid2" {
            set elem $addr($traverse_axis2)
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
         "rapid3" {
            set elem $addr($mom_cycle_spindle_axis)
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
         default {
            set elem $mod
            if { [lsearch $blk_list $elem] >= 0 } {
               lappend new_mod_list $elem
            }
         }
      }
   }
}


########################
# Redefine FEEDRATE_SET
########################
if [llength [info commands ugpost_FEEDRATE_SET] ] {
   rename ugpost_FEEDRATE_SET ""
}

if [llength [info commands FEEDRATE_SET] ] {
   rename FEEDRATE_SET ugpost_FEEDRATE_SET
} else {
   proc ugpost_FEEDRATE_SET {} {}
}


#=============================================================
proc FEEDRATE_SET {} {
#=============================================================
   if [llength [info commands PB_CMD_kin_feedrate_set] ] {
      PB_CMD_kin_feedrate_set
   } else {
      ugpost_FEEDRATE_SET
   }
}


############## EVENT HANDLING SECTION ################


#=============================================================
proc PB_start_of_program { } {
#=============================================================

   if [llength [info commands PB_CMD_kin_start_of_program] ] {
      PB_CMD_kin_start_of_program
   }

   MOM_set_seq_off
   MOM_do_template rewind_stop_code
   PB_CMD_initial_msg
   MOM_set_seq_on
   MOM_force Once G_return
   MOM_do_template absolute_mode
   MOM_force Once G_mode
   MOM_do_template start_of_program
   MOM_force Once G_motion
   MOM_do_template start_of_program_1
   MOM_force Once G
   MOM_do_template start_of_program_2
   MOM_force Once G_cutcom
   MOM_do_template start_of_program_3
   MOM_force Once G_motion
   MOM_do_template start_of_program_4
   MOM_force Once G_plane
   MOM_do_template start_of_program_5
   MOM_force Once Text
   MOM_do_template start_of_program_6
}


#=============================================================
proc MOM_start_of_path { } {
#=============================================================
  global mom_sys_in_operation
   set mom_sys_in_operation 1

  global first_linear_move ; set first_linear_move 0
   TOOL_SET MOM_start_of_path

   if [llength [info commands PB_CMD_kin_start_of_path] ] {
      PB_CMD_kin_start_of_path
   }

   PB_CMD_start_of_operation_force_addresses
   PB_CMD_inicio_operacao
}


#=============================================================
proc MOM_from_move { } {
#=============================================================
  global mom_feed_rate mom_feed_rate_per_rev  mom_motion_type mom_kin_max_fpm
   COOLANT_SET ; CUTCOM_SET ; SPINDLE_SET ; RAPID_SET
}


#=============================================================
proc MOM_first_tool { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
   if {[info exists mom_tool_change_type]} {
      switch $mom_tool_change_type {
         MANUAL { PB_manual_tool_change }
         AUTO   { PB_auto_tool_change }
      }
   } elseif {[info exists mom_manual_tool_change]} {
      if {$mom_manual_tool_change == "TRUE"} {
         PB_manual_tool_change
      }
   }
}


#=============================================================
proc PB_auto_tool_change { } {
#=============================================================
   MOM_force Once T M
   MOM_do_template tool_change_1
}


#=============================================================
proc PB_manual_tool_change { } {
#=============================================================
   PB_CMD_tool_change_force_addresses
   MOM_do_template stop
}


#=============================================================
proc MOM_initial_move { } {
#=============================================================
  global mom_feed_rate mom_feed_rate_per_rev mom_motion_type
  global mom_kin_max_fpm mom_motion_event
   COOLANT_SET ; CUTCOM_SET ; SPINDLE_SET ; RAPID_SET
   MOM_force Once D S M_spindle
   MOM_do_template corretor

  global mom_programmed_feed_rate
   if { [EQ_is_equal $mom_programmed_feed_rate 0] } {
      MOM_rapid_move
   } else {
      MOM_linear_move
   }
}


#=============================================================
proc MOM_first_move { } {
#=============================================================
  global mom_feed_rate mom_feed_rate_per_rev mom_motion_type
  global mom_kin_max_fpm mom_motion_event
   COOLANT_SET ; CUTCOM_SET ; SPINDLE_SET ; RAPID_SET
   MOM_force Once D S M_spindle
   MOM_do_template corretor
   catch {MOM_$mom_motion_event}
}


#=============================================================
proc PB_approach_move { } {
#=============================================================
}


#=============================================================
proc PB_engage_move { } {
#=============================================================
}


#=============================================================
proc PB_first_cut { } {
#=============================================================
}


#=============================================================
proc PB_first_linear_move { } {
#=============================================================
}


#=============================================================
proc PB_retract_move { } {
#=============================================================
}


#=============================================================
proc PB_return_move { } {
#=============================================================
}


#=============================================================
proc MOM_gohome_move { } {
#=============================================================
   MOM_rapid_move
}


#=============================================================
proc MOM_end_of_path { } {
#=============================================================

   if [llength [info commands PB_CMD_kin_end_of_path] ] {
      PB_CMD_kin_end_of_path
   }

   MOM_force Once Text
   MOM_do_template end_of_path_1
   MOM_force Once Z M_spindle
   MOM_do_template end_of_path_2
   global mom_sys_in_operation
   set mom_sys_in_operation 0
}


#=============================================================
proc MOM_tool_change { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
   if {[info exists mom_tool_change_type]} {
      switch $mom_tool_change_type {
         MANUAL { PB_manual_tool_change }
         AUTO   { PB_auto_tool_change }
      }
   } elseif {[info exists mom_manual_tool_change]} {
      if {$mom_manual_tool_change == "TRUE"} {
         PB_manual_tool_change
      }
   }
}


#=============================================================
proc MOM_length_compensation { } {
#=============================================================
   TOOL_SET MOM_length_compensation
   MOM_do_template tool_length_adjust
}


#=============================================================
proc MOM_set_modes { } {
#=============================================================
   MODES_SET
}


#=============================================================
proc MOM_spindle_rpm { } {
#=============================================================
   SPINDLE_SET
   MOM_force Once S M_spindle
   MOM_do_template spindle_rpm
}


#=============================================================
proc MOM_spindle_off { } {
#=============================================================
   MOM_do_template spindle_off
}


#=============================================================
proc MOM_coolant_on { } {
#=============================================================
   COOLANT_SET
}


#=============================================================
proc MOM_coolant_off { } {
#=============================================================
   COOLANT_SET
   MOM_do_template coolant_off
}


#=============================================================
proc PB_feedrates { } {
#=============================================================
}


#=============================================================
proc MOM_cutcom_on { } {
#=============================================================
   CUTCOM_SET
}


#=============================================================
proc MOM_cutcom_off { } {
#=============================================================
   CUTCOM_SET
   MOM_do_template cutcom_off
}


#=============================================================
proc MOM_delay { } {
#=============================================================
   PB_DELAY_TIME_SET
   MOM_do_template delay
}


#=============================================================
proc MOM_opstop { } {
#=============================================================
   MOM_do_template opstop
}


#=============================================================
proc MOM_auxfun { } {
#=============================================================
   MOM_do_template auxfun
}


#=============================================================
proc MOM_prefun { } {
#=============================================================
   MOM_do_template prefun
}


#=============================================================
proc MOM_load_tool { } {
#=============================================================
  global mom_tool_change_type mom_manual_tool_change
}


#=============================================================
proc MOM_stop { } {
#=============================================================
   MOM_do_template stop
}


#=============================================================
proc MOM_tool_preselect { } {
#=============================================================
  global mom_tool_preselect_number mom_tool_number mom_next_tool_number
   if {[info exists mom_tool_preselect_number]} {
      set mom_next_tool_number $mom_tool_preselect_number
   }
   MOM_do_template tool_preselect
}


#=============================================================
proc MOM_linear_move { } {
#=============================================================
  global feed_mode mom_feed_rate mom_kin_rapid_feed_rate

   if { $feed_mode == "IPM" || $feed_mode == "MMPM" } {
      if { [EQ_is_ge $mom_feed_rate $mom_kin_rapid_feed_rate] } {
         MOM_rapid_move
         return
      }
   }

  global first_linear_move

   if { !$first_linear_move } {
      PB_first_linear_move
      incr first_linear_move
   }

   MOM_do_template linear_move
}


#=============================================================
proc MOM_circular_move { } {
#=============================================================
   CIRCLE_SET
   MOM_do_template circular_move_1
   MOM_do_template circular_move
}


#=============================================================
proc MOM_rapid_move { } {
#=============================================================
  global rapid_spindle_inhibit rapid_traverse_inhibit
  global spindle_first is_from
  global mom_cycle_spindle_axis traverse_axis1 traverse_axis2
  global mom_motion_event

   set aa(0) X ; set aa(1) Y ; set aa(2) Z
   RAPID_SET
   set rapid_spindle_blk {G_motion X Y Z M_coolant}
   set rapid_spindle_x_blk {G_motion X M_coolant}
   set rapid_spindle_y_blk {G_motion Y M_coolant}
   set rapid_spindle_z_blk {G_motion Z M_coolant}
   set rapid_traverse_blk {G_motion X Y Z fourth_axis S M_spindle}
   set rapid_traverse_xy_blk {G_motion X Y fourth_axis S M_spindle}
   set rapid_traverse_yz_blk {G_motion Y Z fourth_axis S M_spindle}
   set rapid_traverse_xz_blk {G_motion X Z fourth_axis S M_spindle}
   set rapid_traverse_mod {}
   set rapid_spindle_mod {}

   global mom_sys_control_out mom_sys_control_in
   set co "$mom_sys_control_out"
   set ci "$mom_sys_control_in"

   switch $mom_cycle_spindle_axis {
      0 {
         if [llength $rapid_spindle_x_blk] {
            set spindle_block  rapid_spindle_x
            PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_x_blk aa mod_spindle
         } else {
            set spindle_block  ""
         }
         if [llength $rapid_traverse_yz_blk] {
            set traverse_block rapid_traverse_yz
            PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_yz_blk aa mod_traverse
         } else {
            set traverse_block  ""
         }
      }

      1 {
         if [llength $rapid_spindle_y_blk] {
            set spindle_block  rapid_spindle_y
            PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_y_blk aa mod_spindle
         } else {
            set spindle_block  ""
         }
         if [llength $rapid_traverse_xz_blk] {
            set traverse_block rapid_traverse_xz
            PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_xz_blk aa mod_traverse
         } else {
            set traverse_block  ""
         }
      }

      2 {
         if [llength $rapid_spindle_z_blk] {
            set spindle_block  rapid_spindle_z
            PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_z_blk aa mod_spindle
         } else {
            set spindle_block  ""
         }
         if [llength $rapid_traverse_xy_blk] {
            set traverse_block rapid_traverse_xy
            PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_xy_blk aa mod_traverse
         } else {
            set traverse_block  ""
         }
      }

      default {
         set spindle_block  rapid_spindle
         set traverse_block rapid_traverse
         PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_blk aa mod_spindle
         PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_blk aa mod_traverse
      }
   }

   if {$spindle_first == "TRUE"} {
      if {$rapid_spindle_inhibit == "FALSE"} {
         if { $spindle_block != "" } {
            PB_FORCE Once $mod_spindle
            MOM_do_template $spindle_block
         } else {
            MOM_output_literal "$co Rapid Spindle Block is empty! $ci"
         }
      }
      if {$rapid_traverse_inhibit == "FALSE"} {
         if { $traverse_block != "" } {
            PB_FORCE Once $mod_traverse
            MOM_do_template $traverse_block
         } else {
            MOM_output_literal "$co Rapid Traverse Block is empty! $ci"
         }
      }
   } elseif {$spindle_first == "FALSE"} {
      if {$rapid_traverse_inhibit == "FALSE"} {
         if { $traverse_block != "" } {
            PB_FORCE Once $mod_traverse
            MOM_do_template $traverse_block
         } else {
            MOM_output_literal "$co Rapid Traverse Block is empty! $ci"
         }
      }
      if {$rapid_spindle_inhibit == "FALSE"} {
         if { $spindle_block != "" } {
            PB_FORCE Once $mod_spindle
            MOM_do_template $spindle_block
         } else {
            MOM_output_literal "$co Rapid Spindle Block is empty! $ci"
         }
      }
   } else {
      PB_FORCE Once $mod_traverse
      MOM_do_template rapid_traverse
   }
}


#=============================================================
proc MOM_cycle_off { } {
#=============================================================
   MOM_do_template cycle_off
}


#=============================================================
proc MOM_cycle_plane_change { } {
#=============================================================
  global cycle_init_flag

   set cycle_init_flag TRUE
}


#=============================================================
proc MOM_drill { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL
   CYCLE_SET
}


#=============================================================
proc MOM_drill_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_drill
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_drill_dwell { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL_DWELL
   CYCLE_SET
}


#=============================================================
proc MOM_drill_dwell_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_drill_dwell
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_drill_deep { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL_DEEP
   CYCLE_SET
}


#=============================================================
proc MOM_drill_deep_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_drill_deep
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_drill_break_chip { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name DRILL_BREAK_CHIP
   CYCLE_SET
}


#=============================================================
proc MOM_drill_break_chip_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_drill_break_chip
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_tap { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name TAP
   CYCLE_SET
}


#=============================================================
proc MOM_tap_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_tap
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE
   CYCLE_SET
}


#=============================================================
proc MOM_bore_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_drag { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_DRAG
   CYCLE_SET
}


#=============================================================
proc MOM_bore_drag_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore_drag
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_no_drag { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_NO_DRAG
   CYCLE_SET
}


#=============================================================
proc MOM_bore_no_drag_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore_no_drag
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_manual { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_MANUAL
   CYCLE_SET
}


#=============================================================
proc MOM_bore_manual_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore_manual
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_dwell { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_DWELL
   CYCLE_SET
}


#=============================================================
proc MOM_bore_dwell_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore_dwell
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_back { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_BACK
   CYCLE_SET
}


#=============================================================
proc MOM_bore_back_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore_back
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_bore_manual_dwell { } {
#=============================================================
  global cycle_name
  global cycle_init_flag

   set cycle_init_flag TRUE
   set cycle_name BORE_MANUAL_DWELL
   CYCLE_SET
}


#=============================================================
proc MOM_bore_manual_dwell_move { } {
#=============================================================
  global cycle_init_flag

   MOM_do_template cycle_bore_manual_dwell
   set cycle_init_flag FALSE
}


#=============================================================
proc MOM_sequence_number { } {
#=============================================================
   SEQNO_SET
}


#=============================================================
proc PB_CMD_FEEDRATE_NUMBER { } {
#=============================================================
#
#  This custom command allows you to modify the feed rate number
#  after it has been calculated by the system
#
   global mom_feed_rate_number

   set mom_sys_frn_factor 1.0

   if [info exists mom_feed_rate_number] {
      return [expr $mom_feed_rate_number * $mom_sys_frn_factor]
   } else {
      return 0.0
   }
}


#=============================================================
proc PB_CMD_before_motion { } {
#=============================================================
}


#=============================================================
proc PB_CMD_check_coord_limits { } {
#=============================================================
# proc criada a partir da proc 'PB_CMD_check_travel_limits'
#
# This custom command may be used to check for the maximum travel for each axis.
# A warning will be output for each GOTO that exceeds the limits.
# It does not check for parallel axis such as Z and W.  It does not account for
# any modifications done by the user to mom_pos before the coordinates are output.
#
# You must add the following line of code (without the #) to the custom command
# PB_CMD_before_motion
#
# PB_CMD_check_coord_limits
#
   global mom_sys_max_travel 
   global mom_sys_min_travel
   global mom_kin_x_axis_limit
   global mom_kin_y_axis_limit
   global mom_kin_z_axis_limit
   global mom_pos 
   global mom_cycle_rapid_to_pos 
   global mom_cycle_feed_to_pos 
   global mom_cycle_retract_to_pos 
   global mom_motion_type
   global mom_warning_info



   if {![info exists mom_sys_max_travel]} {

      for {set i 0} {$i < 3} {incr i} {

         set mom_sys_max_travel($i) $mom_pos($i)
         set mom_sys_min_travel($i) $mom_pos($i)

      }

   } elseif {$mom_motion_type == "CYCLE"} {
             MOM_output_literal "ciclo"
             MOM_output_literal "=> mom cycle rapid to pos(2): $mom_cycle_rapid_to_pos(2)"
      for {set i 0} {$i < 3} {incr i} {

         if {$mom_cycle_rapid_to_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_cycle_rapid_to_pos($i)
         }
         if {$mom_cycle_rapid_to_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_cycle_rapid_to_pos($i)
         }
         if {$mom_cycle_feed_to_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_cycle_feed_to_pos($i)
         }
         if {$mom_cycle_feed_to_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_cycle_feed_to_pos($i)
         }
         if {$mom_cycle_retract_to_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_cycle_retract_to_pos($i)
         }
         if {$mom_cycle_retract_to_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_cycle_retract_to_pos($i)
         }
         MOM_output_literal "=> mom cycle rapid to pos(2): $mom_cycle_rapid_to_pos(2)"
      }
   } else {
             MOM_output_literal "mov"    
      for {set i 0} {$i < 3} {incr i} {
         if {$mom_pos($i) < $mom_sys_min_travel($i)} {
            set mom_sys_min_travel($i) $mom_pos($i)
         }
         if {$mom_pos($i) > $mom_sys_max_travel($i)} {
            set mom_sys_max_travel($i) $mom_pos($i)
         }
      }
   }

   MOM_set_seq_off
   if {$mom_sys_max_travel(0) > $mom_kin_x_axis_limit} {
	set mom_sys_max_travel(0) [format %.3f $mom_sys_max_travel(0)]
	MOM_output_literal "Coord X$mom_sys_max_travel(0) acima do valor Maximo"
   }
   if {$mom_sys_min_travel(0) < 0} {
        set mom_sys_min_travel(0) [format %.3f $mom_sys_min_travel(0)]
	MOM_output_literal "===> Coord X$mom_sys_min_travel(0) abaixo do valor Minimo"
   }
   if {$mom_sys_max_travel(1) > $mom_kin_y_axis_limit} {
        set mom_sys_max_travel(1) [format %.3f $mom_sys_max_travel(1)]
	MOM_output_literal "===> Coord Y$mom_sys_max_travel(1) acima do valor Maximo"
   }
   if {$mom_sys_min_travel(1) < 58} {
        set mom_sys_min_travel(1) [format %.3f $mom_sys_min_travel(1)]
	MOM_output_literal "===> Coord Y$mom_sys_min_travel(1) abaixo do valor Minimo"
   }
   if {$mom_sys_max_travel(2) > 0} {
        set mom_sys_max_travel(2) [format %.3f $mom_sys_max_travel(2)]
	MOM_output_literal "===> Coord Z$mom_sys_max_travel(2) acima do valor Maximo"
   }
   if {$mom_sys_min_travel(2) < $mom_kin_z_axis_limit} {
        set mom_sys_min_travel(2) [format %.3f $mom_sys_min_travel(2)]
	MOM_output_literal "===> Coord Z$mom_sys_min_travel(2) abaixo do valor Minimo"
   }
   MOM_set_seq_on
}


#=============================================================
proc PB_CMD_circle_direction { } {
#=============================================================
   global mom_arc_direction circle_direction

   if {$mom_arc_direction == "CLW"} {set circle_direction "DR-"}
   if {$mom_arc_direction == "CCLW"} {set circle_direction "DR+"}
}


#=============================================================
proc PB_CMD_clamp_fifth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to clamp the fifth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M12"
}


#=============================================================
proc PB_CMD_clamp_fourth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to clamp the fourth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M10"
}


#=============================================================
proc PB_CMD_cycle_init { } {
#=============================================================
global cycle_init_flag mom_cycle_delay

global mom_motion_event   mom_cycle_feed_to  mom_cycle_rapid_to     
global mom_tool_diameter   mom_cycle_step1   
global cycle_peck_size cycle_type_number   ;# js
global js_prev_pos			   ;# diy previous Z height
global js_return_pos			   ;# returnZ incremental from top of hole

global mom_pos		;# xy and especially Z of this hole
global mom_prev_pos	;# ditto - previous hole

global mom_cycle_retract_mode  mom_cycle_retract_to feed
global block1 block2 block3 block4 block5 block6 block7 block8




# Heidenhain cycle types
set cycle_type_number 200 	;# drill & peck
if {$mom_motion_event == "bore_move" } {
    set cycle_type_number 201	;# ream
}
if {$mom_motion_event == "bore_drag_move" } {
    set cycle_type_number 202	;# bore
}
if {$mom_motion_event == "drill_break_chip_move" } {
    set cycle_type_number 203	;# break_chip
}
if {$mom_motion_event == "tap_move" } {
    set cycle_type_number 207	;# rigid tapping 
}

# peck sizes 
set cycle_peck_size [expr ($mom_cycle_feed_to*(-1.0))] 	;# single peck size most cycles
if { $mom_motion_event == "drill_deep_move" || $mom_motion_event == "drill_break_chip_move"} {

    if {($mom_cycle_step1 == 0)} {
	set cycle_peck_size  $mom_tool_diameter ;# default peck  if not set
    }  else {
	set cycle_peck_size  $mom_cycle_step1	;# real peck
    } 
}

if {![info exists mom_cycle_delay]} {set mom_cycle_delay 0.0}

# normally cycle_init_flag is only set if this is a new cycle
#  it is specifically unset in cycle_plane_change event, which
#  happens when a drilling operation goes uphill, 
#  ( drills a hole at a higher Z than the previous hole) 
#  it is _not_ set  when drilling downhill.
#  this next bit of code sets the variable for up or downhill
#  so that the new hole is defined - this is absolutely required
#  to ensure the hole Z height Q203 is set correctly.

set cycle_init_flag  "FALSE"
# ===== verificar mudanca no ciclo =========
if {$block1 != $mom_cycle_rapid_to} {
	set block1  $mom_cycle_rapid_to
	set cycle_init_flag  "TRUE"
}
if {$block2 != $mom_cycle_feed_to} {
	set block2  $mom_cycle_feed_to
	set cycle_init_flag  "TRUE"
}
if {$block3 != $feed} {
	set block3  $feed
	set cycle_init_flag  "TRUE"
}
if {$block4 != $cycle_peck_size} {
	set block4  $cycle_peck_size
	set cycle_init_flag  "TRUE"
}
if {$block5 != 0} {
	set block5  0
	set cycle_init_flag  "TRUE"
}
if {$block6 != $mom_pos(2)} {
	set block6  $mom_pos(2)
	set cycle_init_flag  "TRUE"
}
if {$block7 != $mom_cycle_delay} {
	set block7  $mom_cycle_delay
	set cycle_init_flag  "TRUE"
}
if {$block8 != $js_prev_pos} {
	set block8  $js_prev_pos
	set cycle_init_flag  "TRUE"
}
#==================================

if {$cycle_init_flag == "TRUE"} {

  

 MOM_output_literal ";"
 MOM_do_template cycle_block		;# cycle def 200/201 etc

 MOM_set_seq_off
 MOM_do_template cycle_block_1		;# Q200 setup ( engage ) ht 
 MOM_do_template cycle_block_2		;# Q201 hole depth ( incremental )
 if { $cycle_type_number == 207 }  {	;# only tapping
    	MOM_do_template cycle_block_239	;# Q239 thread lead 
    } else {
 	MOM_do_template cycle_block_3	;# Q206 feedrate units/min
    }
 if { $cycle_type_number == 200 }  {	;# only drilling
    	MOM_do_template cycle_block_4	;# Q202 peck size 
    	MOM_do_template cycle_block_5	;# Q210 dwell above hole hardwired to zero
    }
 
 MOM_do_template cycle_block_6		;# Q203 Z of top of hole ( absolute )
 MOM_force once cycle_dwell
 MOM_do_template cycle_block_7		;# Q211 cycle dwell 

 if {$mom_cycle_retract_mode == "MANUAL" } {
    set js_return_pos  $mom_cycle_retract_to
    MOM_do_template cycle_block_8	;# Q204 Zreturn after cycle ( incremental )
 } elseif {$mom_cycle_retract_mode == "AUTO" } {
          set js_return_pos [expr $js_prev_pos - $mom_pos(2)] ;# calc incr retract
          MOM_do_template cycle_block_8	;# Q204 Zreturn after cycle ( incremental )
 } else { 
         set js_return_pos  $mom_cycle_rapid_to
         MOM_do_template cycle_block_8	;# Q204 Zreturn after cycle ( incremental )
 }

 MOM_set_seq_on 
 MOM_output_literal ";"
}
}


#=============================================================
proc PB_CMD_cycle_off { } {
#=============================================================
global tap_flag
global block1 block2 block3 block4 block5 block6 block7 block8

# === resetar valores ================
set block1  " "
set block2  " "
set block3  " "
set block4  " "
set block5  " "
set block6  " "
set block7  " "
set block8  " "
#==================================

set tap_flag	0
}


#=============================================================
proc PB_CMD_cycle_plane_change { } {
#=============================================================
# plane change happens when drilling operation goes uphill
# ie - when new hole is higher in Z than prev hole
# retract mode AUTO is return to clearance plane using
# Q204 ( which is like G98 ) so this next bit is only for
# case where cycles stay down 

global mom_cycle_retract_mode mom_cycle_rapid_to_pos mom_pos

if { $mom_cycle_retract_mode != "AUTO" } { 

	MOM_force Once  G_motion 	;# not sure why i need this
	MOM_do_template cycle_rapidtoZ	
  }
}


#=============================================================
proc PB_CMD_end_of_alignment_character { } {
#=============================================================
 # Return sequnece number back to orignal
 # This command may be used with the command "PM_CMD_start_of_alignment_character"

  global mom_sys_leader saved_seq_num

  set mom_sys_leader(N) $saved_seq_num
}


#=============================================================
proc PB_CMD_end_of_comment { } {
#=============================================================

  global mom_sys_leader saved_seq_num
  set mom_sys_leader(N) $saved_seq_num
}


#=============================================================
proc PB_CMD_fifth_axis_rotate_move { } {
#=============================================================
#
#  This procedure is used by the ROTATE ude command to output a 
#  fifth axis rotary move.  You can use the NC Data Definitions
#  section of postbuilder to modify the fifth_axis_rotary_move
#  block template. 
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#

  MOM_force once fifth_axis
  MOM_do_template fifth_axis_rotate_move
}


#=============================================================
proc PB_CMD_final { } {
#=============================================================
global mom_proj_1
global mom_machine_time  tempo_troca num_troca
global tempo_pallet

set tempo_u	[format %.1f $mom_machine_time]
MOM_output_literal ";(Tempo de Usinagem: $tempo_u min.)"

set tempo_p	[expr 2 * $tempo_pallet]
set tempo_p	[format %.1f $tempo_p]
MOM_output_literal ";(Tempo Troca de Pallet: $tempo_p min.)"

set tempo_t   [expr $tempo_troca * $num_troca]
set tempo_t   [format %.1f $tempo_t]
MOM_output_literal ";(Tempo Troca Ferr ($num_troca): $tempo_t min.)"

set total_p  [expr $tempo_u + $tempo_p + $tempo_t]
set total_p  [format %.1f $total_p]
MOM_output_literal ";(Tempo Total da Peca: $total_p min.)"

MOM_output_literal "%$mom_proj_1 G71"
}


#=============================================================
proc PB_CMD_final_operacao { } {
#=============================================================
global mom_machine_time tempo_anterior tempo_oper

set tempo_oper	[expr $mom_machine_time - $tempo_anterior]

set tempo_oper	[format %.1f $tempo_oper]
MOM_output_literal ";(Tempo da Operacao: $tempo_oper min.)"

set tempo_anterior   $mom_machine_time
}


#=============================================================
proc PB_CMD_first_move_force { } {
#=============================================================
global last_b ang_b

MOM_force once G_motion X Y Z M_spindle F cutter_comp


MOM_output_literal  "FM==> ang_b: $ang_b  |  last_b: $last_b <=="

 MOM_rotate
}


#=============================================================
proc PB_CMD_force_change { } {
#=============================================================
global mom_machine_time tempo_troca num_troca

#set mom_machine_time  [expr $mom_machine_time + $tempo_troca]
incr num_troca

MOM_force once T M
}


#=============================================================
proc PB_CMD_fourth_axis_rotate_move { } {
#=============================================================
#
#  This procedure is used by the ROTATE ude command to output a 
#  fourth axis rotary move.  You can use the NC Data Definitions
#  section of postbuilder to modify the fourth_axis_rotary_move
#  block template. 
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#

  MOM_force once fourth_axis
  MOM_do_template fourth_axis_rotate_move
}


#=============================================================
proc PB_CMD_inicio_operacao { } {
#=============================================================
global mom_tool_number  mom_tool_name
global mom_path_name ang_b

MOM_output_literal ";(OPERACAO: $mom_path_name - FERRAMENTA: T$mom_tool_number - $mom_tool_name)"

#MOM_rotate
}


#=============================================================
proc PB_CMD_inicio_programa { } {
#=============================================================
global flag_inicio  ang_b dot
global last_b tap_flag
global tempo_anterior tempo_oper
global num_troca  tempo_troca
global tempo_pallet  comp_g53
global block1 block2 block3 block4 block5 block6 block7 block8
global last_W

#---- Definicao de variaveis ----
set flag_inicio	1
set ang_b	0
set dot		"."
set last_b	"start"
set tap_flag	0
set tempo_anterior   0
set tempo_oper       0
set tempo_troca      0.4 
set num_troca        1
set tempo_pallet     1
set comp_g53	     "G53 P011"
set last_W	     0

#===== inicializar variaveis de controle de ciclo fixo ====
set block1  " "
set block2  " "
set block3  " "
set block4  " "
set block5  " "
set block6  " "
set block7  " "
set block8  " "
 
#------------------------------------------------------------

#---- Redefinicao da proc MOM_text --------------------------
proc MOM_text {} {
}

#---- Redefinicao da proc MOM_rotate ------------------------
proc MOM_rotate {} {
 global mom_rotate_axis_type mom_rotate_direction
 global mom_rotation_angle mom_rotate_text
 global ang_b mom_out_angle_pos  last_b  comp_g53

 #set ang_b	$mom_rotation_angle
 set ang_b	$mom_out_angle_pos(0)
#
if {$ang_b != $last_b} {

 if {$ang_b == "0"} {
	MOM_output_literal "B[format %3.1f $ang_b]"
	set comp_g53 "G53 P011"
 } elseif {$ang_b == "90"} {
	MOM_output_literal "B[format %3.1f $ang_b]"
	set comp_g53 "G53 P012"
 } elseif {$ang_b == "180"} {
	MOM_output_literal "B[format %3.1f $ang_b]"
	set comp_g53 "G53 P013"
 } elseif {$ang_b == "270"} {
	MOM_output_literal "B[format %3.1f $ang_b]"
	set comp_g53 "G53 P014"
 } else {
	MOM_output_literal "==> ANGULO INVALIDO ANGULO INVALIDO ANGULO INVALIDO <=="
	MOM_output_literal "==> ANGULO INVALIDO: B[format %3.1f $ang_b] <=="
	MOM_output_literal "==> ANGULO INVALIDO ANGULO INVALIDO ANGULO INVALIDO <=="
 }

}
 set last_b	$ang_b
 MOM_output_literal "$comp_g53"
}
#------------------------------------------------------------
}


#=============================================================
proc PB_CMD_init_parallel_zw_mode { } {
#=============================================================

uplevel #0 {

#
#  This procedure will be executed automatically at the start of program 
#  and anytime it is loaded as a slave post of a linked post.
#
#  You will need to add the following line (without the #) to the top of
#  the custom command PB_CMD_before_motion.
#
#PB_CMD_zw_before_motion
#
#  This procedure can be used to initialize a machine tool that has 
#  parallel Z and W axes.  The leader for the Z axis is changed from
#  Z to W and W to Z as needed.  The Z or W mode may be changed by 
#  adding a PB_CMD_set_mode_zaxis or PB_CMD_set_mode_waxis to any
#  event marker.  The UDE's SET/MODE,ZAXIS or SET/MODE,WAXIS may also
#  be added to the toolpath to change mode.  The UDE's SET/ZAXIS,z 
#  and SET/WAXIS,w may be used to position the Z or W axis directly.
#
#  The Z and W axis may not be output in the same block.
#
#  ZW Parameters
#
set mom_sys_quill_leader	"Z"
set mom_sys_table_leader	"W"
set mom_sys_zaxis_home	0.0
set mom_sys_waxis_home	0.0
set mom_sys_zaxis_max_limit	9999.9999
set mom_sys_zaxis_min_limit	-9999.9999
set mom_sys_waxis_max_limit	9999.9999
set mom_sys_waxis_min_limit	-9999.9999

#
#  System variables DO NOT CHANGE
#
set mom_sys_zw_mode		$mom_sys_quill_leader
set mom_sys_leader(z_axis)  $mom_sys_quill_leader
set mom_sys_quill_pos		0.0
set mom_sys_table_pos		0.0
set mom_sys_z_pos		0.0

set def_file_name "${mom_output_file_directory}temp_def_file.def"
set temp_file [open "$def_file_name" w]

puts $temp_file "MACHINE zw"
puts $temp_file " "
puts $temp_file "FORMATTING"
puts $temp_file "\{"
puts $temp_file "ADDRESS Z "
puts $temp_file "  \{"
puts $temp_file "      FORMAT      Coordinate"
puts $temp_file "      FORCE       off"
puts $temp_file "      MAX         9999.9999 Truncate"
puts $temp_file "      MIN         -9999.9999 Truncate"
puts $temp_file "      LEADER      \[\$mom_sys_leader\(z_axis\)\]"
puts $temp_file "      ZERO_FORMAT Zero_real"
puts $temp_file "  \}"
puts $temp_file " BLOCK_TEMPLATE zaxis_move" 
puts $temp_file "  \{"
puts $temp_file "       G_motion\[\$mom_sys_rapid_code\]"
puts $temp_file "       Z\[\$mom_sys_zaxis_pos\]"
puts $temp_file "  \}"
puts $temp_file "\}"
close $temp_file
MOM_load_definition_file $def_file_name
MOM_remove_file $def_file_name


proc MOM_before_output {} {
#_______________________________________________________________________________
# This procedure is executed just before a line is about to be output
# to the file. It loads the line into a variable MOM_o_buffer and then calls
# this procedure. When it returns from this procedure, the variable MOM_o_buffer
# is read and written to the file.
#_______________________________________________________________________________

   global mom_sys_leader mom_sys_quill_leader mom_sys_table_leader
   global mom_sys_quill_pos mom_sys_table_pos
   global mom_o_buffer
   global mom_sys_control_out mom_sys_control_in

   set st [string first $mom_sys_control_out $mom_o_buffer]
   set en [string last $mom_sys_control_in $mom_o_buffer]

   if {$st == -1 || $en == -1} {
      set buff $mom_o_buffer
   } else {
      set l [string length $mom_o_buffer]
      set st1 ""
      set st2 ""
      if {$st > 0} {set st1 [string range $mom_o_buffer 0 [expr $st-1]]}
      if {$en < $l} {set st2 [string range $mom_o_buffer [expr $en+1] $l]}
      set buff [concat $st1 $st2]
   } 

   set zwout [string first $mom_sys_leader(z_axis) $buff]

   if {$zwout > -1} {
      set val [MOM_ask_address_value Z]
      if {$val != ""} {
         if [info exists list_file] { puts $list_file "mbm val $val" }
         if { $mom_sys_leader(z_axis) == $mom_sys_quill_leader } {
            set mom_sys_quill_pos $val
         } elseif { $mom_sys_leader(z_axis) == $mom_sys_table_leader } {
            set mom_sys_table_pos $val
         }
      }
   }


#########The following procedure invokes the listing file with warnings.

   LIST_FILE
}


#=============================================================
proc MODES_SET { } {
#=============================================================
   global mom_output_mode mom_parallel_to_axis 

   switch $mom_output_mode {
      ABSOLUTE { set isincr OFF }
      default  { set isincr ON }
   }

   MOM_incremental $isincr X Y Z

   switch $mom_parallel_to_axis {
      WAXIS { PB_CMD_set_mode_waxis }
      default { PB_CMD_set_mode_zaxis }
   }
}


proc MOM_set_axis { } {
#==================================================
   global mom_axis_position mom_axis_position_value 
   global mom_sys_zw_pos mom_prev_pos mom_last_pos mom_sys_zw_mode
   global mom_sys_leader mom_sys_zaxis_pos mom_sys_waxis_home mom_pos
   global mom_sys_quill_leader mom_sys_zaxis_home mom_sys_table_leader
   global mom_prev_pos mom_sys_table_pos
   global mom_prev_pos mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_quill_pos 
   global last_W


   switch $mom_axis_position {
      ZAXIS { 
         if {$mom_sys_zw_mode == $mom_sys_table_leader} {
            set need_w_reset 0
            set mom_sys_leader(z_axis) $mom_sys_quill_leader
         }

         set mom_sys_zaxis_pos $mom_axis_position_value
         #MOM_force once Z
         MOM_do_template zaxis_move

         if [info exists need_w_reset] {
            set mom_sys_leader(z_axis) $mom_sys_table_leader
            unset need_w_reset
         }
      }
      WAXIS  { 
         if {$mom_sys_zw_mode == $mom_sys_quill_leader} {
            set need_w_reset 0
            set mom_sys_leader(z_axis) $mom_sys_table_leader
         }

         set mom_sys_zaxis_pos $mom_axis_position_value
         #MOM_force once Z
if {$last_W != $mom_sys_zaxis_pos} {
         PB_CMD_start_of_comment
         MOM_do_template zaxis_move
         PB_CMD_end_of_comment
}
         if {[info exists need_w_reset]} {
            set mom_sys_leader(z_axis) $mom_sys_quill_leader
            unset need_w_reset
         }
      }
   }
}

#=============================================================
proc MOM_set_axis_1 { } {
#=============================================================
   global mom_axis_position mom_axis_position_value 
   global mom_sys_zw_pos mom_prev_pos mom_last_pos mom_sys_zw_mode
   global mom_sys_leader mom_sys_zaxis_pos mom_sys_waxis_home mom_pos
   global mom_sys_quill_leader mom_sys_zaxis_home mom_sys_table_leader
   global mom_prev_pos mom_sys_table_pos
   global mom_prev_pos mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_quill_pos 
   global last_W

if { ![info exists mom_axis_position_value]} {set mom_axis_position_value 0}

if { [info exists mom_axis_position]} {

   switch $mom_axis_position {
      ZAXIS { 
         if {$mom_sys_zw_mode == $mom_sys_table_leader} {
            set need_w_reset 0
            set mom_sys_leader(z_axis) $mom_sys_quill_leader
         }

         set mom_sys_zaxis_pos $mom_axis_position_value
         #MOM_force once Z
         MOM_do_template zaxis_move

         if [info exists need_w_reset] {
            set mom_sys_leader(z_axis) $mom_sys_table_leader
            unset need_w_reset
         }
      }
      WAXIS  { 
         if {$mom_sys_zw_mode == $mom_sys_quill_leader} {
            set need_w_reset 0
            set mom_sys_leader(z_axis) $mom_sys_table_leader
         }

         set mom_sys_zaxis_pos $mom_axis_position_value
         #MOM_force once Z
         if {$last_W != $mom_sys_zaxis_pos} {
             MOM_do_template zaxis_move
             set last_W  $mom_sys_zaxis_pos
         }
         if {[info exists need_w_reset]} {
            set mom_sys_leader(z_axis) $mom_sys_quill_leader
            unset need_w_reset
         }
      }
   }
  }
}

} ;# uplevel
}


#=============================================================
proc PB_CMD_init_rotary { } {
#=============================================================
uplevel #0 {

#
# Retract and Re-Engage Parameters
#
# This option is activated by setting the Axis Limit Violation 
# Handling option on the Machine Tool dialog to Retract/Re-Engage.  
#
# The sequence of actions that take place when a rotary limit violation
# occurs is a retract to the clearance geometry at the rapid feedrate, 
# reposition the rotary axes so they do not violate, move back to 
# the engage point at the retract feedrate and engage into the part again.
#
# You can set additional parameters that will control the retract 
# and re-engage motion.
#
#
#  mom_kin_retract_type ------- specifies the method used to
#                               calculate the retract point.
#                               It can be of
#
#    DISTANCE : The retract will be to a point at a fixed distance
#               along the spindle axis.
#
#    SURFACE  : For a 4-axis rotary head machine, the retract will
#               be to a cylinder.  For a 5-axis dual heads machine,
#               the retract will be to a sphere.  For machine with
#               only rotary table(s), the retract will be to a plane
#               normal & along the spindle axis.
#
#  mom_kin_retract_distance --- specifies the distance or radius for
#                               defining the geometry of retraction.
#
#  mom_kin_reengage_distance -- specifies the re-engage point above
#                               the part.
#

set mom_kin_retract_type                "DISTANCE"
set mom_kin_retract_distance            10.0
set mom_kin_reengage_distance           .20





#
# The following parameters are used by UG Post.  Do NOT change 
# them unless you know what you are doing.
#

set mom_kin_spindle_axis(0)                    0.0
set mom_kin_spindle_axis(1)                    0.0
set mom_kin_spindle_axis(2)                    1.0

if [info exists mom_sys_spindle_axis] { unset mom_sys_spindle_axis }

set mom_sys_spindle_axis(0)                    0.0
set mom_sys_spindle_axis(1)                    0.0
set mom_sys_spindle_axis(2)                    1.0

set mom_sys_lock_status                        "OFF"

} ;# uplevel
}


#=============================================================
proc PB_CMD_initial_msg { } {
#=============================================================
global mom_part_name
global mom_logname
global mom_date

MOM_output_literal ";ARQUIVO: [string toupper $mom_part_name]"
MOM_output_literal ";PROGRAMADOR: [string toupper $mom_logname]"
MOM_output_literal ";DATA: [string toupper $mom_date]"
}


#=============================================================
proc PB_CMD_kin_before_motion { } {
#=============================================================
#
#  This custom command is used by UG Post to support Set/Lock, 
#  rotary axis limit violation retracts and auto clamping.  
#  Do not change this procedure.  If you want to improve 
#  performance, you may comment out any of these procedures.
#  

   global mom_kin_machine_type

   if [info exists mom_kin_machine_type] {
      if { [string match "*3_axis_mill*" $mom_kin_machine_type] ||  [string match "*lathe*" $mom_kin_machine_type] } {
return
      }
   }


   LOCK_AXIS_MOTION

   ROTARY_AXIS_RETRACT

   AUTO_CLAMP
}


#=============================================================
proc PB_CMD_kin_end_of_path { } {
#=============================================================
  # Record tool time for this operation.
   if [llength [info commands PB_CMD_set_oper_tool_time] ] {
      PB_CMD_set_oper_tool_time
   }
}


#=============================================================
proc PB_CMD_kin_feedrate_set { } {
#=============================================================
# This procedure supercedes the functionalites provided by the
# FEEDRATE_SET in ugpost_base.tcl.  Post Builder automatically
# generates proper call sequences to this procedure in the
# Event handlers.
#
# This procedure must be used in conjunction with ugpost_base.tcl.
#
  global   feed com_feed_rate
  global   mom_feed_rate_output_mode super_feed_mode feed_mode
  global   mom_cycle_feed_rate_mode mom_cycle_feed_rate
  global   mom_cycle_feed_rate_per_rev
  global   mom_motion_type
  global   mom_warning_info
  global   Feed_IPM Feed_IPR Feed_MMPM Feed_MMPR Feed_INV
  global   mom_sys_feed_param
  global   mom_sys_cycle_feed_mode


  set super_feed_mode $mom_feed_rate_output_mode

  set f_pm [ASK_FEEDRATE_FPM] ; set f_pr [ASK_FEEDRATE_FPR]

  switch $mom_motion_type {

    CYCLE {
      if [info exists mom_sys_cycle_feed_mode] {
         if { $mom_sys_cycle_feed_mode != "Auto" } {
            set mom_cycle_feed_rate_mode $mom_sys_cycle_feed_mode
         }
      }
      if {[hiset mom_cycle_feed_rate_mode]} { set super_feed_mode $mom_cycle_feed_rate_mode }
      if {[hiset mom_cycle_feed_rate]} { set f_pm $mom_cycle_feed_rate }
      if {[hiset mom_cycle_feed_rate_per_rev]} { set f_pr $mom_cycle_feed_rate_per_rev }
    }

    FROM -
    RETRACT -
    RETURN -
    LIFT -
    TRAVERSAL -
    GOHOME -
    GOHOME_DEFAULT -
    RAPID {
      SUPER_FEED_MODE_SET RAPID
    }

    default {
      if {[EQ_is_zero $f_pm] && [EQ_is_zero $f_pr]} {
        SUPER_FEED_MODE_SET RAPID
      } else {
        SUPER_FEED_MODE_SET CONTOUR
      }
    }
  }


  set feed_mode $super_feed_mode


 # Adjust feedrate format per Post output unit again.
  global mom_kin_output_unit
  if { $mom_kin_output_unit == "IN" } {
     switch $feed_mode {
       MMPM {
         set feed_mode "IPM"
         CATCH_WARNING "Feedrate mode MMPM changed to IPM"
       }
       MMPR {
         set feed_mode "IPR"
         CATCH_WARNING "Feedrate mode MMPR changed to IPR"
       }
     }
  } else {
     switch $feed_mode {
       IPM {
         set feed_mode "MMPM"
         CATCH_WARNING "Feedrate mode IPM changed to MMPM"
       }
       IPR {
         set feed_mode "MMPR"
         CATCH_WARNING "Feedrate mode IPR changed to MMPR"
       }
     }
  }


  switch $feed_mode {
    IPM     -
    MMPM    { set feed $f_pm }
    IPR     -
    MMPR    { set feed $f_pr }
    DPM     { set feed [PB_CMD_FEEDRATE_DPM] }
    FRN     -
    INVERSE { set feed [PB_CMD_FEEDRATE_NUMBER] }
    default { set mom_warning_info "INVALID FEED RATE MODE" ; MOM_catch_warning ; return }
  }


 # Post Builder provided format for the current mode:
  if [info exists mom_sys_feed_param(${feed_mode},format)] {
    MOM_set_address_format F $mom_sys_feed_param(${feed_mode},format)
  } else {
    switch $feed_mode {
      IPM     -
      MMPM    -
      IPR     -
      MMPR    -
      DPM     -
      FRN     { MOM_set_address_format F Feed_${feed_mode} }
      INVERSE { MOM_set_address_format F Feed_INV }
    }
  }

 # Commentary output
  set com_feed_rate $f_pm


 # Execute user's commnad, if any.
  if [llength [info commands "PB_CMD_FEEDRATE_SET"]] {
     PB_CMD_FEEDRATE_SET
  }
}


#=============================================================
proc PB_CMD_kin_init_mill_turn { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_init_mill_xzc { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_init_rotary { } {
#=============================================================

   global mom_kin_machine_type

   if [info exists mom_kin_machine_type] {
      if { [string match "*3_axis_mill*" $mom_kin_machine_type] ||  [string match "*lathe*" $mom_kin_machine_type] } {
return
      }
   }


   PB_CMD_init_rotary



uplevel #0 {


#=============================================================
proc MOM_clamp { } {
#=============================================================
  global mom_clamp_axis mom_clamp_status mom_sys_auto_clamp

   if {$mom_clamp_axis == "AUTO"} {
      if {$mom_clamp_status == "ON"} {
         set mom_sys_auto_clamp "ON"
      } elseif {$mom_clamp_status == "OFF"} {
         set mom_sys_auto_clamp "OFF"
      }
   }
}


#=============================================================
proc MOM_rotate { } {
#=============================================================
  global mom_rotate_axis_type mom_rotation_mode mom_rotation_direction
  global mom_rotation_angle mom_rotation_reference_mode
  global mom_kin_machine_type mom_kin_4th_axis_direction mom_kin_5th_axis_direction
  global mom_kin_4th_axis_leader mom_kin_5th_axis_leader
  global mom_kin_4th_axis_leader mom_kin_5th_axis_leader mom_pos
  global mom_out_angle_pos mom_prev_out_angle_pos
  global mom_prev_pos mom_sys_leader
  global mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit
  global mom_kin_5th_axis_min_limit mom_kin_5th_axis_max_limit

   if {![info exists mom_rotation_angle]} {return}

  #
  #  Determine which axis the user wanted, fourth or fifth.
  #
   switch $mom_rotate_axis_type {
      AAXIS {
         set axis [AXIS_SET $mom_rotate_axis_type]
      }
      BAXIS {
         set axis [AXIS_SET $mom_rotate_axis_type]
      }
      CAXIS {
         set axis [AXIS_SET $mom_rotate_axis_type]
      }
      TABLE {
         set axis 3
      }
      HEAD {
         if { $mom_kin_machine_type == "5_axis_head_table ||  $mom_kin_machine_type == "5_AXIS_HEAD_TABLE" } {
            set axis 4
         } else {
            set axis 3
         }
      }
      default {
         set axis 3
      }
   }

   switch $mom_rotation_mode {
      NONE {
         set angle $mom_rotation_angle
         set mode 0
      }
      ATANGLE {
         set angle $mom_rotation_angle
         set mode 0
      }
      ABSOLUTE {
         set angle $mom_rotation_angle
         set mode 1
      }
      INCREMENTAL {
         set angle [expr $mom_pos($axis) + $mom_rotation_angle]
         set mode 0
      }
   }
   switch $mom_rotation_direction {
      NONE {
         set dir 0
      }
      CLW {
         set dir 1
      }
      CCLW {
         set dir -1
      }
   }

   set ang [LIMIT_ANGLE $angle]
   set mom_pos($axis) $ang


   if {$axis == "3" && ![info exists mom_prev_out_angle_pos(0)]} {
      set mom_prev_out_angle_pos(0) [MOM_ask_address_value fourth_axis]
      if {$mom_prev_out_angle_pos(0) == ""} {set mom_prev_out_angle_pos(0) 0.0} 
   } 

 
   if {$axis == "4" && ![info exists mom_prev_out_angle_pos(1)]} {  
      set mom_prev_out_angle_pos(1) [MOM_ask_address_value fifth_axis]
      if {$mom_prev_out_angle_pos(1) == ""} {set mom_prev_out_angle_pos(1) 0.0}
   }

   set p [expr $axis + 1]
   set a [expr $axis - 3]
   if {$axis == "3" && $mom_kin_4th_axis_direction == "MAGNITUDE_DETERMINES_DIRECTION"} {
      set dirtype 0
      global mom_sys_4th_axis_rotate_mcodes
      if [info exists mom_sys_4th_axis_rotate_mcodes] {
        if {$mom_sys_4th_axis_rotate_mcodes == "ON"} {
          global mom_sys_4th_current_rotary_direction
          set del $dir
          if {$del == 0} {
            set del [expr $ang-$mom_prev_pos(3)]
            if {$del > 180.0} {set del [expr $dir-360.0]}
            if {$del < -180.0} {set del [expr $dir+360.0]}
          }
          if {$del > 0.0 && $mom_sys_4th_current_rotary_direction <= 0} {
            PB_CMD_output_4th_axis_clw_mcode
            set mom_sys_4th_current_rotary_direction 1
          } elseif {$del < 0.0 && $mom_sys_4th_current_rotary_direction >= 0} {
            PB_CMD_output_4th_axis_cclw_mcode
            set mom_sys_4th_current_rotary_direction -1
          }
        }
      }
   } elseif { $axis == "4"  &&  $mom_kin_5th_axis_direction == "MAGNITUDE_DETERMINES_DIRECTION" } {
      set dirtype 0
      global mom_sys_5th_axis_rotate_mcodes
      if [info exists mom_sys_5th_axis_rotate_mcodes] {
        if {$mom_sys_5th_axis_rotate_mcodes == "ON"} {
          global mom_sys_5th_current_rotary_direction
          set del $dir
          if {$del == 0} {
            set del [expr $ang-$mom_prev_pos(4)]
            if {$del > 180.0} {set del [expr $dir-360.0]}
            if {$del < -180.0} {set del [expr $dir+360.0]}
          }
          if {$del > 0.0 && $mom_sys_5th_current_rotary_direction <= 0} {
            PB_CMD_output_5th_axis_clw_mcode
            set mom_sys_5th_current_rotary_direction 1
          } elseif {$del < 0.0 && $mom_sys_5th_current_rotary_direction >= 0} {
            PB_CMD_output_5th_axis_cclw_mcode
            set mom_sys_5th_current_rotary_direction -1
          }
        }
      }
   } else {
      set dirtype 1
   }

   if {$mode == 1} {
      set mom_out_angle_pos($a) $angle
   } elseif {$dirtype == 0} {

      if {$axis == 3} {
         set mom_out_angle_pos($a) [ROTSET $ang  $mom_prev_out_angle_pos(0)  $mom_kin_4th_axis_direction  $mom_kin_4th_axis_leader  mom_sys_leader(fourth_axis)  $mom_kin_4th_axis_min_limit  $mom_kin_4th_axis_max_limit]
      } else {
         set mom_out_angle_pos($a) [ROTSET $ang  $mom_prev_out_angle_pos(1)  $mom_kin_5th_axis_direction   $mom_kin_5th_axis_leader   mom_sys_leader(fifth_axis)  $mom_kin_5th_axis_min_limit  $mom_kin_5th_axis_max_limit]
      }

 #     if {$axis == 3} {set prot $mom_prev_out_angle_pos(0)}
 #     if {$axis == 4} {set prot $mom_prev_out_angle_pos(1)}
 #     if {$dir == 1 && $mom_out_angle_pos($a) < $prot} {
 #        set mom_out_angle_pos($a) [expr $mom_out_angle_pos($a) + 360.0] 
 #     } elseif {$dir == -1 && $mom_out_angle_pos($a) > $prot} {
 #        set mom_out_angle_pos($a) [expr $mom_out_angle_pos($a) - 360.0]
 #     }
   } elseif {$dirtype == "1"} {

      if {$dir == -1} {
         if {$axis == 3} {
            set mom_sys_leader(fourth_axis) $mom_kin_4th_axis_leader-
         } else {
            set mom_sys_leader(fifth_axis) $mom_kin_5th_axis_leader-
         }
      } elseif {$dir == 0} {
         if {$axis == 3} {
            set mom_out_angle_pos($a) [ROTSET $ang  $mom_prev_out_angle_pos(0)  $mom_kin_4th_axis_direction   $mom_kin_4th_axis_leader   mom_sys_leader(fourth_axis)  $mom_kin_4th_axis_min_limit  $mom_kin_4th_axis_max_limit]
         } else {
            set mom_out_angle_pos($a) [ROTSET $ang  $mom_prev_out_angle_pos(1)  $mom_kin_5th_axis_direction   $mom_kin_5th_axis_leader  mom_sys_leader(fifth_axis)  $mom_kin_5th_axis_min_limit  $mom_kin_5th_axis_max_limit]
         }
      } elseif {$dir == 1} {
         set mom_out_angle_pos($a) $ang
      }
   }

   global mom_sys_auto_clamp
 
   if {[info exists mom_sys_auto_clamp]} {
     if {$mom_sys_auto_clamp == "ON"} {
       set out1 "0"
       set out2 "1"
       if {$axis == 3} {
         AUTO_CLAMP_2 $out1
         AUTO_CLAMP_1 $out2
       } else {
         AUTO_CLAMP_1 $out1
         AUTO_CLAMP_2 $out2
       }
     }
   }

   if {$axis == 3} {
      PB_CMD_fourth_axis_rotate_move
   } else {
      PB_CMD_fifth_axis_rotate_move
   }

   set mom_prev_pos($axis) $ang
   MOM_reload_variable -a mom_prev_pos
   MOM_reload_variable -a mom_out_angle_pos
}


#=============================================================
proc MOM_lock_axis { } {
#=============================================================
  global mom_sys_lock_value mom_sys_lock_plane
  global mom_sys_lock_axis mom_sys_lock_status

   set status [SET_LOCK axis plane value]
   if {$status == "error"} {
      MOM_catch_warning
      set mom_sys_lock_status OFF
   } else {
      set mom_sys_lock_status $status
      if {$status != "OFF"} {
         set mom_sys_lock_axis $axis
         set mom_sys_lock_plane $plane
         set mom_sys_lock_value $value
      }
   }
}

#=============================================================
proc PB_catch_warning { } {
#=============================================================
  global mom_sys_rotary_error mom_warning_info

   if {$mom_warning_info == "ROTARY CROSSING LIMIT."} {
      set mom_sys_rotary_error $mom_warning_info
   }
   if {$mom_warning_info == "secondary rotary position being used"} {
      set mom_sys_rotary_error $mom_warning_info
   }
}


} ;# uplevel
}


#=============================================================
proc PB_CMD_kin_linearize_motion { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_mill_turn_initialize { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_mill_xzc_init { } {
#=============================================================
}


#=============================================================
proc PB_CMD_kin_set_csys { } {
#=============================================================
   if [llength [info commands PB_CMD_set_csys] ] {
      PB_CMD_set_csys
   }
}


#=============================================================
proc PB_CMD_kin_start_of_path { } {
#=============================================================
#
#  This procedure is executed at the start of every operation.
#  It will check to see if a new head (post) was loaded and 
#  will then initialize any functionality specific to that post.
#
#  It will also restore the initial Start of Program or End
#  of program event procedures.
#
#  DO NOT CHANGE THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING.
#  DO NOT CALL THIS PROCEDURE FROM ANY OTHER CUSTOM COMMAND.
#
  global mom_sys_head_change_init_program

   if [info exists mom_sys_head_change_init_program] {

      PB_CMD_kin_start_of_program
      unset mom_sys_head_change_init_program


     #<06-17-03 gsl> Moved from MOM_head to
     # execute start of head callback in new post's context.
      global CURRENT_HEAD
      if { [info exists CURRENT_HEAD] &&  [llength [info commands PB_start_of_HEAD__$CURRENT_HEAD]] } {
         PB_start_of_HEAD__$CURRENT_HEAD
      }

      # Restore master start & end of program handlers
      if [llength [info commands "MOM_start_of_program_save"]] {
         if [llength [info commands "MOM_start_of_program"]] {
            rename MOM_start_of_program ""
         }
         rename MOM_start_of_program_save MOM_start_of_program 
      }
      if [llength [info commands "MOM_end_of_program_save"]] {
         if [llength [info commands "MOM_end_of_program"]] {
            rename MOM_end_of_program ""
         }
         rename MOM_end_of_program_save MOM_end_of_program 
      }

     # Restore master head change event handler
      if [llength [info commands "MOM_head_save"]] {
         if [llength [info commands "MOM_head"]] {
            rename MOM_head ""
         }
         rename MOM_head_save MOM_head
      }
   }

  # Initialize tool time accumulator for this operation.
   if [llength [info commands PB_CMD_init_oper_tool_time] ] {
      PB_CMD_init_oper_tool_time
   }

  # Force out motion G code at the start of path.
   MOM_force once G_motion
}


#=============================================================
proc PB_CMD_kin_start_of_program { } {
#=============================================================
#
#  This procedure will execute the following custom commands for
#  initialization.  They will be executed once at the start of 
#  program and again each time they are loaded as a linked post.  
#  After execution they will be deleted so that they are not 
#  present when a different post is loaded.  You may add a call 
#  to a procedure that you want executed when a linked post is 
#  loaded.  
#
#  Note that when a linked post is called in, the Start of Program
#  event marker is not executed again, neither is this procedure.
#
#  DO NOT REMOVE ANY LINES FROM THIS PROCEDURE UNLESS YOU KNOW
#  WHAT YOU ARE DOING.  DO NOT CALL THIS PROCEDURE FROM ANY
#  OTHER CUSTOM COMMAND.
#
   global mom_kin_machine_type


   set command_list [list]

   if [info exists mom_kin_machine_type] {
      if { ![string match "*3_axis_mill*" $mom_kin_machine_type] &&  ![string match "*lathe*" $mom_kin_machine_type] } {

         lappend command_list  PB_CMD_kin_init_rotary
      }
   }

   lappend command_list  PB_CMD_init_pivot_offsets
   lappend command_list  PB_CMD_init_auto_retract
   lappend command_list  PB_CMD_initialize_parallel_zw_mode
   lappend command_list  PB_CMD_init_parallel_zw_mode
   lappend command_list  PB_CMD_initialize_tool_list
   lappend command_list  PB_CMD_init_tool_list
   lappend command_list  PB_CMD_init_tape_break
   lappend command_list  PB_CMD_initialize_spindle_axis
   lappend command_list  PB_CMD_init_spindle_axis
   lappend command_list  PB_CMD_initialize_helix
   lappend command_list  PB_CMD_init_helix
   lappend command_list  PB_CMD_pq_cutcom_initialize
   lappend command_list  PB_CMD_init_pq_cutcom

   if [info exists mom_kin_machine_type] {
      if { [string match "*3_axis_mill_turn*" $mom_kin_machine_type] } {

          lappend command_list  PB_CMD_kin_init_mill_xzc
          lappend command_list  PB_CMD_kin_mill_xzc_init
          lappend command_list  PB_CMD_kin_init_mill_turn
          lappend command_list  PB_CMD_kin_mill_turn_initialize
      }
   }

   foreach cmd $command_list {

      if [llength [info commands "$cmd"]] {

         # <PB v2.0.2>
         # Old init commands for XZC/MILL_TURN posts are not executed.
         # Parameters set by these commands in the v2.0 legacy posts
         # will need to be transfered to PB_CMD_init_mill_xzc &
         # PB_CMD_init_mill_turn commands respectively.

         switch $cmd {
            "PB_CMD_kin_mill_xzc_init" -
            "PB_CMD_kin_mill_turn_initialize" {}
            default { $cmd }
         }
         rename $cmd ""
         proc $cmd { args } {} 
      }
   }
}


#=============================================================
proc PB_CMD_linear_move { } {
#=============================================================
#
#  This procedure is used by many automatic postbuilder functions 
#  to output a linear move.  Do NOT add this block to events or
#  markers.  It is a static block and it is not intended to be added
#  to events.  Do NOT change the name of this procedure.  
#
#  If you need a custom command to be output with a linear move block, 
#  you must place a call to the custom command either before or after 
#  the MOM_do_template command.
#
#  This proc is used for:
#     simulated cycles feed moves
#     mill/turn mill linearization
#     four and five axis retract and re-engage
#     

  MOM_do_template linear_move
}


#=============================================================
proc PB_CMD_linearize_motion { } {
#=============================================================
}


#=============================================================
proc PB_CMD_nurbs_end_of_program { } {
#=============================================================
  global nurbs_move_flag

  if {[info exists nurbs_move_flag]} {MOM_output_literal "G05 P0"}
}


#=============================================================
proc PB_CMD_nurbs_initialize { } {
#=============================================================
#
#  You will need to activate nurbs motion in Unigraphics CAM under 
#  machine control to generate nurbs events.
#
#  This procedure is used to establish nurbs parameters.  It must be 
#  placed in the Start of Program marker to output nurbs.
#

uplevel #0 { 

  set mom_kin_nurbs_output_type              BSPLINE

  MOM_reload_kinematics

proc MOM_nurbs_move {} {
#_______________________________________________________________________________
# This procedure is executed for each nurbs move.
#_______________________________________________________________________________
  global mom_nurbs_knot_count
  global mom_nurbs_point_count
  global mom_nurbs_order

  global nurbs_knot_count
  global nurbs_precision
  global nurbs_move_flag
  global anchor_flag

  if {![info exists nurbs_move_flag]} {
    MOM_output_literal "G05 P10000"
    set nurbs_move_flag 1
  }

  FEEDRATE_SET
  if {![info exists anchor_flag]} {
    MOM_do_template anchor_point
    set anchor_flag 0
  }

  set nurbs_knot_count 0
  MOM_force once G_motion order X Y Z

  while {$nurbs_knot_count < $mom_nurbs_point_count} {
    MOM_do_template nurbs
    set nurbs_knot_count [expr $nurbs_knot_count + 1]
  }

  while {$nurbs_knot_count < $mom_nurbs_knot_count} {
    MOM_do_template knots
    set nurbs_knot_count [expr $nurbs_knot_count + 1]
  }
}




}
}


#=============================================================
proc PB_CMD_partno_caterpillar { } {
#=============================================================
global mom_ident_1 mom_peca_1 mom_operacao_1
global mom_metodo_1 mom_maquina_1 mom_at_1
global mom_os_1 mom_local_1 mom_proj_1
global mom_date mom_logname flag_inicio
global mom_sys_home_pos

if {$flag_inicio == "1"} {
    	set flag_inicio	"0"

	#---------Define a data-----------------------------------------
	set date_split [split $mom_date]
	set date(1) [lindex $date_split 1]
	set date(2) [lindex $date_split 2]
	set date(3) [lindex $date_split 3]
	set date(4) [lindex $date_split 4]
	
	set lixo [expr $date(4) / 100]


	set date(4) [format %02d [expr ($date(4) - ($lixo * 100))]]
	#----------------------Muda o mes para numero-----------------------
	switch $date(1) {
		"Jan" {set date(1) "01"}
		"Feb" {set date(1) "02"}
		"Mar" {set date(1) "03"}
		"Apr" {set date(1) "04"}
		"May" {set date(1) "05"}
		"Jun" {set date(1) "06"}
		"Jul" {set date(1) "07"}
		"Aug" {set date(1) "08"}
		"Sep" {set date(1) "09"}
		"Oct" {set date(1) "10"}
		"Nov" {set date(1) "11"}
		"Dec" {set date(1) "12"}
      	}

	set data1 "$date(2)$date(1)$date(4)"
	#---------------------------------

	#----- Define a linha de partno ------
	set sp		" "
	set tr		"-"
	set partno "PARTNO"
	append partno $mom_ident_1$sp$sp
	append partno $mom_peca_1$sp
	append partno $mom_operacao_1$sp
	append partno $mom_metodo_1$sp
	append partno $mom_maquina_1$sp
	append partno $mom_at_1$tr
	append partno $mom_os_1$sp
	append partno $mom_local_1$mom_os_1$mom_proj_1$sp
	append partno $data1$sp$mom_logname

	#------ Insere cabecalho -------
	MOM_set_seq_off
	MOM_output_literal $partno
	MOM_output_literal "    "
	MOM_output_literal "%$mom_proj_1 G71"
	MOM_set_seq_on
	MOM_output_literal "G0 G40 G90"
	MOM_output_literal "G0 G53 P010"
	MOM_output_literal "G0Z$mom_sys_home_pos(2). W0.0"
	MOM_output_literal "M70"
}
}


#=============================================================
proc PB_CMD_pause { } {
#=============================================================
  set cam_aux_dir  [MOM_ask_env_var UGII_CAM_AUXILIARY_DIR]

  if { [file exists ${cam_aux_dir}ugwish.exe] && [file exists ${cam_aux_dir}mom_pause.tcl] } {
    exec ${cam_aux_dir}ugwish.exe ${cam_aux_dir}mom_pause.tcl
  }
}


#=============================================================
proc PB_CMD_post_name { } {
#=============================================================
# echo back the post file location
# options for full path name, file name only , uppercase

  global mom_event_handler_file_name	
  MOM_output_literal ";   POSTPROCESSOR NAME  "
  MOM_output_literal ";  [ string toupper $mom_event_handler_file_name ] ) "
  MOM_output_literal ";   "
}


#=============================================================
proc PB_CMD_redefine_rapid_move { } {
#=============================================================
#=============================================================
proc MOM_rapid_move { } {
#=============================================================
  global rapid_spindle_inhibit rapid_traverse_inhibit
  global spindle_first is_from
  global mom_cycle_spindle_axis traverse_axis1 traverse_axis2
  global mom_motion_event

global mom_sys_zaxis_pos
         


   set aa(0) X ; set aa(1) Y ; set aa(2) Z
   RAPID_SET
   set rapid_spindle_blk {G_motion X Y Z}
   set rapid_spindle_x_blk {G_motion X}
   set rapid_spindle_y_blk {G_motion Y}
   set rapid_spindle_z_blk {G_motion Z}
   set rapid_traverse_blk {G_motion X Y Z S M_spindle}
   set rapid_traverse_xy_blk {G_motion X Y S M_spindle}
   set rapid_traverse_yz_blk {G_motion Y Z S M_spindle}
   set rapid_traverse_xz_blk {G_motion X Z S M_spindle}
   set rapid_traverse_mod {G_motion}
   set rapid_spindle_mod {G_motion}

   global mom_sys_control_out mom_sys_control_in
   set co "$mom_sys_control_out"
   set ci "$mom_sys_control_in"

   switch $mom_cycle_spindle_axis {
      0 {
         if [llength $rapid_spindle_x_blk] {
            set spindle_block  rapid_spindle_x
            PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_x_blk aa mod_spindle
         } else {
            set spindle_block  ""
         }
         if [llength $rapid_traverse_yz_blk] {
            set traverse_block rapid_traverse_yz
            PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_yz_blk aa mod_traverse
         } else {
            set traverse_block  ""
         }
      }

      1 {
         if [llength $rapid_spindle_y_blk] {
            set spindle_block  rapid_spindle_y
            PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_y_blk aa mod_spindle
         } else {
            set spindle_block  ""
         }
         if [llength $rapid_traverse_xz_blk] {
            set traverse_block rapid_traverse_xz
            PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_xz_blk aa mod_traverse
         } else {
            set traverse_block  ""
         }
      }

      2 {
         if [llength $rapid_spindle_z_blk] {
            set spindle_block  rapid_spindle_z
            PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_z_blk aa mod_spindle
         } else {
            set spindle_block  ""
         }
         if [llength $rapid_traverse_xy_blk] {
            set traverse_block rapid_traverse_xy
            PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_xy_blk aa mod_traverse
         } else {
            set traverse_block  ""
         }
      }

      default {
         set spindle_block  rapid_spindle
         set traverse_block rapid_traverse
         PB_SET_RAPID_MOD $rapid_spindle_mod $rapid_spindle_blk aa mod_spindle
         PB_SET_RAPID_MOD $rapid_traverse_mod $rapid_traverse_blk aa mod_traverse
      }
   }

   if {$spindle_first == "TRUE"} {
      if {$rapid_spindle_inhibit == "FALSE"} {
         if { $spindle_block != "" } {
	    #-- W axis ---
            MOM_set_axis_1

            PB_FORCE Once $mod_spindle
            MOM_do_template $spindle_block
         } else {
            MOM_output_literal "$co Rapid Spindle Block is empty! $ci"
         }
      }
      if {$rapid_traverse_inhibit == "FALSE"} {
         if { $traverse_block != "" } {
            PB_FORCE Once $mod_traverse
            MOM_do_template $traverse_block
         } else {
            MOM_output_literal "$co Rapid Traverse Block is empty! $ci"
         }
      }
   } elseif {$spindle_first == "FALSE"} {
      if {$rapid_traverse_inhibit == "FALSE"} {
         if { $traverse_block != "" } {
            PB_FORCE Once $mod_traverse
            MOM_do_template $traverse_block
 
         } else {
            MOM_output_literal "$co Rapid Traverse Block is empty! $ci"
         }
      }
      if {$rapid_spindle_inhibit == "FALSE"} {
         if { $spindle_block != "" } {
	    #-- W axis ---
            MOM_set_axis_1

            PB_FORCE Once $mod_spindle
            MOM_do_template $spindle_block
         } else {
            MOM_output_literal "$co Rapid Spindle Block is empty! $ci"
         }
      }
   } else {
      PB_FORCE Once $mod_traverse
      MOM_do_template rapid_traverse
   }
   PB_CMD_save_last_z
}
}


#=============================================================
proc PB_CMD_reposition_move { } {
#=============================================================
#
#  This procedure is used by rotary axis retract to reposition the
#  rotary axes after the tool has been fully retracted.
#
#  You can modify the this procedure to customize the reposition move.
#  If you need a custom command to be output with this block, 
#  you must place a call a the custom command either before or after 
#  the MOM_do_template command.
#  
   MOM_suppress once X Y Z
   MOM_do_template rapid_traverse
}


#=============================================================
proc PB_CMD_retract_move { } {
#=============================================================
#
#  This procedure is used by rotary axis retract to move away from
#  the part.  This move is a three axis move along the tool axis at
#  a retract feedrate.
#
#  You can modify the this procedure to customize the retract move.
#  If you need a custom command to be output with this block, 
#  you must place a call to the custom command either before or after 
#  the MOM_do_template command.
# 
#  If you need to modify the x,y or z locations you will need to do the
#  following.  (without the #)
#
#  global mom_pos
#  set mom_pos(0) 1.0
#  set mom_pos(1) 2.0
#  set mom_pos(2) 3.0
  
   MOM_do_template linear_move
}


#=============================================================
proc PB_CMD_save_last_z { } {
#=============================================================
# capture previous z height for use in cycles
# can't always use the simple mom_prev_pos in cycles so need
# a dedicated variable

global mom_pos
global js_prev_pos			   ;# diy previous Z height	

 if {[hiset mom_pos(2)]} {
	set js_prev_pos $mom_pos(2)
 } else {
	set js_prev_pos 0		   ;# irrelevant if not yet set
 }
}


#=============================================================
proc PB_CMD_set_csys { } {
#=============================================================
#  This custom command is provided as the default to nullify
#  the same command in a linked post that may have been
#  imported from pb_cmd_coordinate_system_rotation.tcl.
}


#=============================================================
proc PB_CMD_set_cycle_plane { } {
#=============================================================
#
# Use this command to determine and output proper plane code
# when G17/18/19 is used in the cycle definition.
#


 #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 # Next option can be set to 1, if the address of cycle's
 # principal axis needs to be suppressed. (Ex. siemens controller)
 #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  set suppress_principal_axis 0


 #++++++++++++++++++++++++++++++++++++++++++++++++++++++
 # Next option can be set to 1, if the plane code needs
 # to be forced out @ the start of every set of cycles.
 #++++++++++++++++++++++++++++++++++++++++++++++++++++++
  set force_plane_code 0


  global mom_kin_machine_type
  global mom_kin_4th_axis_type mom_kin_4th_axis_plane
  global mom_kin_5th_axis_type
  global mom_tool_axis mom_sys_spindle_axis mom_kin_spindle_axis
  global mom_pos
  global mom_cycle_spindle_axis mom_cutcom_plane mom_pos_arc_plane


 # Default cycle spindle axis to Z
  set mom_cycle_spindle_axis 2


  if { ![string match "*3_axis_mill*" $mom_kin_machine_type] } {

    if { $mom_kin_4th_axis_type == "Head" } {

      if [EQ_is_equal [expr abs($mom_tool_axis(0))] 1.0] {
        set mom_cycle_spindle_axis 0
      }

      if [EQ_is_equal [expr abs($mom_tool_axis(1))] 1.0] {
        set mom_cycle_spindle_axis 1
      }

      if { $mom_kin_5th_axis_type == "Table" } {

        if [EQ_is_equal [expr abs($mom_pos(3))] 90.0] {

          switch $mom_kin_4th_axis_plane {
            "YZ" {
              set mom_cycle_spindle_axis 1
            }
            "ZX" {
              set mom_cycle_spindle_axis 0
            }
          }
        }
      }
    }
  }


  switch $mom_cycle_spindle_axis {
    0 {
      set mom_cutcom_plane  YZ
      set mom_pos_arc_plane YZ
      set principal_axis X
    }
    1 {
      set mom_cutcom_plane  ZX
      set mom_pos_arc_plane ZX
      set principal_axis Y
    }
    2 {
      set mom_cutcom_plane  XY
      set mom_pos_arc_plane XY
      set principal_axis Z
    }
    default {
      set mom_cutcom_plane  UNDEFINED
      set mom_pos_arc_plane UNDEFINED
      set principal_axis ""
    }
  }


  if { $suppress_principal_axis && [string length $principal_axis] > 0 } {
    MOM_suppress once $principal_axis
  }


  if { $force_plane_code } {
    global cycle_init_flag

    if { [info exists cycle_init_flag] && [string match "TRUE" $cycle_init_flag] } {
      MOM_force once G_plane
    }
  }
}


#=============================================================
proc PB_CMD_set_mode_waxis { } {
#=============================================================
#
#  This command is used to change from Z axis mode to W axis mode
#
   global mom_sys_zw_mode mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_leader mom_sys_table_leader mom_pos
   global mom_sys_quill_pos mom_sys_table_pos
   global mom_cycle_feed_to_pos mom_cycle_rapid_to_pos
   global mom_cycle_feed_to mom_cycle_rapid_to

   if {$mom_sys_zw_mode != $mom_sys_table_leader} {
      set mom_sys_zw_mode $mom_sys_table_leader
      set mom_sys_leader(z_axis) $mom_sys_table_leader

      set mom_pos(2) [expr $mom_sys_z_pos - $mom_sys_quill_pos]
      if {[info exists mom_cycle_feed_to_pos]} {
         set mom_cycle_feed_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_feed_to - $mom_sys_quill_pos]
      }
      if [info exists mom_cycle_rapid_to_pos] {
         set mom_cycle_rapid_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_rapid_to - $mom_sys_quill_pos]
      }
      MOM_force once Z
   }
}


#=============================================================
proc PB_CMD_set_mode_zaxis { } {
#=============================================================
#
#  This command is used to change from W axis mode to Z axis mode
#
   global mom_sys_zw_mode mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_leader mom_sys_quill_leader mom_pos
   global mom_sys_quill_pos mom_sys_table_pos
   global mom_cycle_feed_to_pos mom_cycle_rapid_to_pos
   global mom_cycle_feed_to mom_cycle_rapid_to

   if {$mom_sys_zw_mode != $mom_sys_quill_leader} {
      set mom_sys_zw_mode $mom_sys_quill_leader
      set mom_sys_leader(z_axis) $mom_sys_quill_leader
      set mom_pos(2) [expr $mom_sys_z_pos - $mom_sys_table_pos]
      if {[info exists mom_cycle_feed_to_pos]} {
         set mom_cycle_feed_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_feed_to - $mom_sys_table_pos]
      }
      if {[info exists mom_cycle_rapid_to_pos]} {
         set mom_cycle_rapid_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_rapid_to - $mom_sys_table_pos]
      }
      MOM_force once Z
   }
}


#=============================================================
proc PB_CMD_set_quill_home { } {
#=============================================================
#
#  This command is used to move the quill to home position
#
   global mom_sys_zw_pos mom_prev_pos mom_last_pos mom_sys_zw_mode
   global mom_sys_leader mom_sys_zaxis_pos mom_sys_zaxis_home mom_pos
   global mom_sys_table_leader mom_sys_waxis_home mom_sys_quill_leader
   global mom_prev_pos mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_quill_pos 

   if {$mom_sys_zw_mode == $mom_sys_table_leader} {
      set need_w_reset 0
      set mom_sys_leader(z_axis) $mom_sys_quill_leader
   }

   set mom_sys_zaxis_pos $mom_sys_zaxis_home
   MOM_force once Z
   MOM_do_template zaxis_move

   if [info exists need_w_reset] {
      set mom_sys_leader(z_axis) $mom_sys_table_leader
      unset need_w_reset
      set mom_pos(2) [expr $mom_sys_z_pos - $mom_sys_quill_pos]
      if {[info exists mom_cycle_feed_to_pos]} {
         set mom_cycle_feed_to_pos(2) [expr $mom_sys_cycle_z_pos + $mom_cycle_feed_to - $mom_sys_quill_pos]
      }
      if [info exists mom_cycle_rapid_to_pos] {
         set mom_cycle_rapid_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_rapid_to - $mom_sys_quill_pos]
      }
   }
}


#=============================================================
proc PB_CMD_set_table_home { } {
#=============================================================
#
#  This command is used to move the table to home position
#
   global mom_sys_zw_pos mom_prev_pos mom_last_pos mom_sys_zw_mode
   global mom_sys_leader mom_sys_zaxis_pos mom_sys_waxis_home mom_pos
   global mom_sys_quill_leader mom_sys_zaxis_home mom_sys_table_leader
   global mom_prev_pos mom_sys_table_pos
   global mom_prev_pos mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_quill_pos 

   if {$mom_sys_zw_mode == $mom_sys_quill_leader} {
      set need_z_reset 0
      set mom_sys_leader(z_axis) $mom_sys_table_leader
   }

   set mom_sys_zaxis_pos $mom_sys_waxis_home
   MOM_force once Z
   MOM_do_template zaxis_move

   if {[info exists need_z_reset]} {
      set mom_sys_leader(z_axis) $mom_sys_quill_leader
      unset need_z_reset
      set mom_pos(2) [expr $mom_sys_z_pos - $mom_sys_table_pos]
      if {[info exists mom_cycle_feed_to_pos]} {
         set mom_cycle_feed_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_feed_to - $mom_sys_table_pos]
      }
      if {[info exists mom_cycle_rapid_to_pos]} {
         set mom_cycle_rapid_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_rapid_to - $mom_sys_table_pos]
      }
   }
}


#=============================================================
proc PB_CMD_start_of_alignment_character { } {
#=============================================================
 # This command can be used to output a special sequence number character.  
 # Replace the ":" with any character that you require.
 # You must use the command "PB_CMD_end_of_alignment_character" to reset
 # the sequence number back to the original setting.

  global mom_sys_leader saved_seq_num

  set saved_seq_num $mom_sys_leader(N)
  set mom_sys_leader(N) ":"
}


#=============================================================
proc PB_CMD_start_of_comment { } {
#=============================================================

  global mom_sys_leader saved_seq_num
  set saved_seq_num $mom_sys_leader(N)
  set mom_sys_leader(N)  "; "
}


#=============================================================
proc PB_CMD_start_of_operation_force { } {
#=============================================================
global mom_sys_zaxis_pos

MOM_force once G_motion X Y Z M_spindle F cutter_comp

MOM_rotate
}


#=============================================================
proc PB_CMD_start_of_operation_force_addresses { } {
#=============================================================
  MOM_force once M_spindle S X Y Z F R fourth_axis fifth_axis
}


#=============================================================
proc PB_CMD_tap_on { } {
#=============================================================
global tap_flag 

if {$tap_flag == 0} {
    MOM_do_template cycle_rapidtoZ
    set tap_flag   1
}
}


#=============================================================
proc PB_CMD_tool_change_force_addresses { } {
#=============================================================
  MOM_force once G_adjust H O S
}


#=============================================================
proc PB_CMD_transmissao { } {
#=============================================================
  global aux_path wishexe std_pooldir msg_window
  global mom_output_file_directory  mom_output_file_basename  mom_output_file_suffix
  global ptp_file_name
  
  set wishexe		"ugwish.exe"
  set aux_path		[MOM_ask_env_var "UGII_CAM_AUXILIARY_DIR"]
  set std_customdir 	[MOM_ask_env_var "UGII_CAM_CUSTOM_DIR"]
  set msg_window	"ftp.tcl"
  set ftp_c 		"paridade.exe "

#**** The following procedure lists the tool  list with time in commentary data
  LIST_FILE_TRAILER
#**** The following procedure closes the warning and listing files
  CLOSE_files

 MOM_close_output_file $ptp_file_name
  
 if {[catch {exec $aux_path$wishexe $std_customdir$msg_window} lixo]} {exec $std_customdir$ftp_c $ptp_file_name}
}


#=============================================================
proc PB_CMD_unclamp_fifth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to unclamp the fifth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M13"
}


#=============================================================
proc PB_CMD_unclamp_fourth_axis { } {
#=============================================================
#
#  This procedure is used by auto clamping to output the code
#  needed to unclamp the fourth axis.  
#
#  Do NOT add this block to events or markers.  It is a static 
#  block and it is not intended to be added to events.  Do NOT 
#  change the name of this custom command.
#
  MOM_output_literal "M11"
}


#=============================================================
proc PB_CMD_zw_before_motion { } {
#=============================================================
   global mom_pos mom_prev_pos
   global mom_sys_quill_pos mom_sys_table_pos
   global mom_cycle_feed_to_pos mom_cycle_rapid_to_pos
   global mom_sys_zw_mode mom_sys_z_pos mom_sys_cycle_z_pos
   global mom_sys_table_leader mom_sys_quill_leader
   global mom_cycle_feed_to mom_cycle_rapid_to
   global mom_motion_type mom_motion_event no_update


   if {[info exists no_update]} {
      unset no_update
   } elseif {$mom_motion_type == "CYCLE" && $mom_motion_event == "initial_move"} {
      set mom_sys_cycle_z_pos [expr $mom_pos(2) - $mom_cycle_rapid_to]
      set mom_sys_z_pos $mom_pos(2)
      set no_update 0
   } else {
      set mom_sys_cycle_z_pos $mom_pos(2)
      set mom_sys_z_pos $mom_pos(2)
   }


   if {$mom_sys_zw_mode == $mom_sys_table_leader} {
      set mom_pos(2) [expr $mom_sys_z_pos - $mom_sys_quill_pos]
      if [info exists mom_cycle_feed_to_pos] {
         set mom_cycle_feed_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_feed_to - $mom_sys_quill_pos]

      }
      if [info exists mom_cycle_rapid_to_pos] {
         set mom_cycle_rapid_to_pos(2)  [expr $mom_sys_cycle_z_pos + $mom_cycle_rapid_to - $mom_sys_quill_pos]
      }
   }

   if {$mom_sys_zw_mode == $mom_sys_quill_leader} {
      set mom_pos(2) [expr $mom_sys_z_pos - $mom_sys_table_pos]
      if [info exists mom_cycle_feed_to_pos] {
         set mom_cycle_feed_to_pos(2) [expr $mom_sys_cycle_z_pos + $mom_cycle_feed_to - $mom_sys_table_pos]
      }
      if [info exists mom_cycle_rapid_to_pos] {
         set mom_cycle_rapid_to_pos(2) [expr $mom_sys_cycle_z_pos + $mom_cycle_rapid_to - $mom_sys_table_pos]
      }
   }
}


#=============================================================
proc PAUSE { args } {
#=============================================================
  global env

  if { [info exists env(PB_SUPPRESS_UGPOST_DEBUG)] &&  $env(PB_SUPPRESS_UGPOST_DEBUG) == 1 } {
return
  }


  set cam_aux_dir  [MOM_ask_env_var UGII_CAM_AUXILIARY_DIR]

  global tcl_platform

  if [string match "*windows*" $tcl_platform(platform)] {
     set ug_wish "ugwish.exe"
  } else {
     set ug_wish ugwish
  }
 
  if { [file exists ${cam_aux_dir}$ug_wish] && [file exists ${cam_aux_dir}mom_pause.tcl] } {

     set title ""
     set msg ""

     if { [llength $args] == 1 } {
       set msg [lindex $args 0]
     }

     if { [llength $args] > 1 } {
       set title [lindex $args 0]
       set msg [lindex $args 1]
     }
 
     exec ${cam_aux_dir}$ug_wish ${cam_aux_dir}mom_pause.tcl $title $msg
  }
}


#=============================================================
proc EQ_is_zero { s } {
#=============================================================
   global mom_system_tolerance

   if [info exists mom_system_tolerance] {
      if { [expr abs($s)] <= $mom_system_tolerance } { return 1 } else { return 0 }
   } else {
      return 0
   }
}


#=============================================================
proc DELAY_TIME_SET {  } {
#=============================================================
  global mom_sys_delay_param mom_delay_value
  global mom_delay_revs mom_delay_mode delay_time
 
   # post builder provided format for the current mode:
    if {[info exists mom_sys_delay_param(${mom_delay_mode},format)] != 0} {
      MOM_set_address_format dwell $mom_sys_delay_param(${mom_delay_mode},format)
    }
 
    switch $mom_delay_mode {
      SECONDS {set delay_time $mom_delay_value}
      default {set delay_time $mom_delay_revs}
    }
}


#=============================================================
proc SOLVE_QUADRATIC { coeff rcomp icomp status degree } {
#=============================================================

  upvar $coeff c ; upvar $rcomp rc ; upvar $icomp ic
  upvar $status st ; upvar $degree deg 

   set st 1
   set deg 0
   set rc(0) 0.0 ; set rc(1) 0.0
   set ic(0) 0.0 ; set ic(1) 0.0
   set mag [VEC3_mag c]
   if [EQ_is_zero $mag] {return 0}
   set acoeff [expr $c(2)/$mag]
   set bcoeff [expr $c(1)/$mag]
   set ccoeff [expr $c(0)/$mag]
   if {![EQ_is_zero $acoeff]} {
      set deg 2
      set denom [expr $acoeff*2.]
      set dscrm [expr $bcoeff*$bcoeff - $acoeff*$ccoeff*4.0]
      if [EQ_is_zero $dscrm] {
         set dsqrt1 0.0
      } else {
         set dsqrt1 [expr sqrt(abs($dscrm))]
      }
      if [EQ_is_ge $dscrm 0.0] {
         set rc(0) [expr (-$bcoeff + $dsqrt1)/$denom]
         set rc(1) [expr (-$bcoeff - $dsqrt1)/$denom]
         set st 3
         return 2
      } else {
         set rc(0) [expr -$bcoeff/$denom]
         set rc(1) $rc(0)
         set ic(0) [expr $dsqrt1/$denom]
         set ic(1) $ic(0)
         set st 2
         return 0
      }
   } elseif {![EQ_is_zero $bcoeff] } {
      set st 3
      set deg 1
      set rc(0) [expr -$ccoeff/$bcoeff]
      return 1
   } elseif [EQ_is_zero $ccoeff] {
      return 0
   } else {
      return 0
   }
}


#=============================================================
proc LOCK_AXIS_MOTION {  } {
#=============================================================
#
#  The UDE lock_axis must be specified in the tool path
#  for the post to lock the requested axis.  The UDE lock_axis may only
#  be used for four and five axis machine tools.  A four axis post may
#  only lock an axis in the plane of the fourth axis.  For five axis
#  posts only the fifth axis may be locked.  Five axis will only 
#  output correctly if the fifth axis is rotated so it is perpendicular
#  to the spindle axis.
#
  global mom_pos mom_out_angle_pos mom_current_motion mom_motion_type
  global mom_cycle_feed_to_pos mom_cycle_feed_to mom_tool_axis
  global mom_motion_event mom_sys_lock_status 
  global mom_cycle_rapid_to_pos mom_cycle_retract_to_pos
  global mom_cycle_rapid_to mom_cycle_retract_to 
  global mom_prev_pos
  global mom_kin_4th_axis_type
  global mom_kin_spindle_axis 
  global mom_kin_5th_axis_type 
  global mom_kin_4th_axis_plane
  global mom_sys_cycle_after_initial 

  if {$mom_sys_lock_status == "ON"} {  
      if {$mom_current_motion == "circular_move"} {return}
      if {![info exists mom_sys_cycle_after_initial]} {set mom_sys_cycle_after_initial "FALSE"}
      if {$mom_sys_cycle_after_initial == "FALSE"} {
          LOCK_AXIS mom_pos mom_prev_pos mom_pos mom_out_angle_pos
          MOM_reload_variable -a mom_out_angle_pos
          MOM_reload_variable -a mom_pos
      }
      if {$mom_motion_type == "CYCLE"} {
        if {$mom_motion_event == "initial_move"} {
           set mom_sys_cycle_after_initial "TRUE"
           return
        }
        if {$mom_sys_cycle_after_initial == "TRUE"} {
           set mom_pos(0) [expr $mom_pos(0) - $mom_cycle_rapid_to * $mom_tool_axis(0)]
           set mom_pos(1) [expr $mom_pos(1) - $mom_cycle_rapid_to * $mom_tool_axis(1)]
           set mom_pos(2) [expr $mom_pos(2) - $mom_cycle_rapid_to * $mom_tool_axis(2)]
        }
        set mom_sys_cycle_after_initial "FALSE"
        if {$mom_kin_4th_axis_type == "Table"} {
           VMOV 3 mom_kin_spindle_axis mom_sys_spindle_axis 
        } elseif {$mom_kin_5th_axis_type == "Table"} {
           VMOV 3 mom_tool_axis vec
           if {$mom_kin_4th_axis_plane == "XY"} {
              set vec(2) 0.0
           } elseif {$mom_kin_4th_axis_plane == "ZX"} {
             set vec(1) 0.0
           } elseif {$mom_kin_4th_axis_plane == "YZ"} {
             set vec(0) 0.0
           }
           set len [VEC3_unitize vec mom_sys_spindle_axis]
           if [EQ_is_zero $len] {
              set mom_sys_spindle_axis(2) 1.0
           }
        } else {
           VMOV 3 mom_tool_axis mom_sys_spindle_axis
        }

        set mom_cycle_feed_to_pos(0) [expr $mom_pos(0) + $mom_cycle_feed_to * $mom_sys_spindle_axis(0)]
        set mom_cycle_feed_to_pos(1) [expr $mom_pos(1) + $mom_cycle_feed_to * $mom_sys_spindle_axis(1)]
        set mom_cycle_feed_to_pos(2) [expr $mom_pos(2) + $mom_cycle_feed_to * $mom_sys_spindle_axis(2)]    
 
        set mom_cycle_rapid_to_pos(0) [expr $mom_pos(0) + $mom_cycle_rapid_to * $mom_sys_spindle_axis(0)]
        set mom_cycle_rapid_to_pos(1) [expr $mom_pos(1) + $mom_cycle_rapid_to * $mom_sys_spindle_axis(1)]
        set mom_cycle_rapid_to_pos(2) [expr $mom_pos(2) + $mom_cycle_rapid_to * $mom_sys_spindle_axis(2)]    
 
        set mom_cycle_retract_to_pos(0) [expr $mom_pos(0) + $mom_cycle_retract_to * $mom_sys_spindle_axis(0)]
        set mom_cycle_retract_to_pos(1) [expr $mom_pos(1) + $mom_cycle_retract_to * $mom_sys_spindle_axis(1)]
        set mom_cycle_retract_to_pos(2) [expr $mom_pos(2) + $mom_cycle_retract_to * $mom_sys_spindle_axis(2)]    
 
      }
  }
}


#=============================================================
proc LOCK_AXIS { input_point prev_point output_point output_rotary } {
#=============================================================
  upvar $input_point ip ; upvar $output_point op ; upvar $output_rotary or
  upvar $prev_point pp

  global mom_kin_4th_axis_center_offset mom_kin_5th_axis_center_offset
  global mom_kin_4th_axis_plane mom_kin_5th_axis_plane    
  global mom_sys_lock_value mom_sys_lock_plane
  global mom_sys_lock_axis mom_sys_lock_status
  global mom_out_angle_pos mom_prev_out_angle_pos mom_kin_4th_axis_direction 
  global mom_kin_5th_axis_direction mom_kin_4th_axis_leader mom_kin_5th_axis_leader
  global mom_sys_leader mom_kin_machine_resolution
  global mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit
  global mom_kin_5th_axis_min_limit mom_kin_5th_axis_max_limit
  global DEG2RAD RAD2DEG

 
   if {$mom_sys_lock_status == "OFF"} {
      return
   }
   VEC3_sub ip mom_kin_4th_axis_center_offset temp
   if [info exists mom_kin_5th_axis_center_offset] {
      VEC3_sub temp mom_kin_5th_axis_center_offset temp
   }
   set temp(3) $ip(3)
   set temp(4) $ip(4)

   if {$mom_sys_lock_plane == -1} {
      if {$mom_kin_4th_axis_plane == "XY"} {
         set mom_sys_lock_plane 2
      } elseif {$mom_kin_4th_axis_plane == "ZX"} {
         set mom_sys_lock_plane 1
      } elseif {$mom_kin_4th_axis_plane == "YZ"} {
         set mom_sys_lock_plane 0
      }
   } 

   if {$mom_kin_4th_axis_plane == "XY"} {
      set fourth_axis 2
   } elseif {$mom_kin_4th_axis_plane == "ZX"} {
      set fourth_axis 1
   } elseif {$mom_kin_4th_axis_plane == "YZ"} {
      set fourth_axis 0
   }

   if {[info exists mom_kin_5th_axis_plane]} {
      if {$mom_kin_5th_axis_plane == "XY"} {
         set fifth_axis 2
      } elseif {$mom_kin_5th_axis_plane == "ZX"} {
         set fifth_axis 1
      } elseif {$mom_kin_5th_axis_plane == "YZ"} {
         set fifth_axis 0
      }
   } else {
      set fifth_axis -1
   }


   if {$mom_sys_lock_axis > 2} {
      set angle [expr ($mom_sys_lock_value-$temp($mom_sys_lock_axis))*$DEG2RAD]
      ROTATE_VECTOR $mom_sys_lock_plane $angle temp temp1
      VMOV 3 temp1 temp
      set temp($mom_sys_lock_axis) $mom_sys_lock_value
   } else {
      if {$mom_sys_lock_plane == $fifth_axis} {
         set angle [expr ($temp(4))*$DEG2RAD]
         ROTATE_VECTOR $fifth_axis $angle temp temp1
         VMOV 3 temp1 temp
         set temp(4) 0.0
     }
     if {$mom_sys_lock_plane == 0} {
         set i1 1
         set i2 2
      } elseif {$mom_sys_lock_plane == 1} {
         set i1 2
         set i2 0
      } elseif {$mom_sys_lock_plane == 2} {
         set i1 0
         set i2 1
      }
      set unlocked_axis [expr $i1 + $i2 - $mom_sys_lock_axis]
      set rad [expr sqrt($temp($i1)*$temp($i1) + $temp($i2)*$temp($i2))]
      set angle [ARCTAN $temp($i2) $temp($i1)]
      if { $rad < [expr abs($mom_sys_lock_value) + $mom_kin_machine_resolution]} {
         if {$mom_sys_lock_value < 0.0} {
            set temp($mom_sys_lock_axis) [expr -$rad]
         } else {
            set temp($mom_sys_lock_axis) $rad
         }
      } else {
         set temp($mom_sys_lock_axis) $mom_sys_lock_value
      }

      set temp($unlocked_axis)  [expr sqrt($rad*$rad - $temp($mom_sys_lock_axis)*$temp($mom_sys_lock_axis))]

      VMOV 5 temp temp1
      set temp1($unlocked_axis) [expr -$temp($unlocked_axis)]
      set ang1 [ARCTAN $temp($i2) $temp($i1)]
      set ang2 [ARCTAN $temp1($i2) $temp1($i1)]
      if {$fifth_axis == -1} {
         set i1 3
      } else {
         set i1 4
      }
      set temp($i1) [expr ($angle-$ang1)*$RAD2DEG]
      set temp1($i1) [expr ($angle-$ang2)*$RAD2DEG]
      set ang1 [LIMIT_ANGLE [expr $pp($i1)-$temp($i1)]]
      set ang2 [LIMIT_ANGLE [expr $pp($i1)-$temp1($i1)]]
      if {$ang1 > 180.0} {set ang1 [LIMIT_ANGLE [expr -$ang1]]}  
      if {$ang2 > 180.0} {set ang2 [LIMIT_ANGLE [expr -$ang2]]}
      if {$ang1 > $ang2} {VMOV 5 temp1 temp}
   }

   VEC3_add temp mom_kin_4th_axis_center_offset op
   if {[info exists mom_kin_5th_axis_center_offset]} {
      VEC3_add op mom_kin_5th_axis_center_offset op
   }

   if {![info exists or]} {
      set or(0) 0.0
      set or(1) 0.0
   }
   if {![info exists mom_prev_out_angle_pos]} {
      set mom_prev_out_angle_pos(0) $or(0)
      set mom_prev_out_angle_pos(1) $or(1)
   }

   set or(0) [ROTSET $temp(3) $mom_prev_out_angle_pos(0) $mom_kin_4th_axis_direction  $mom_kin_4th_axis_leader mom_sys_leader(fourth_axis)  $mom_kin_4th_axis_min_limit $mom_kin_4th_axis_max_limit]
   if [info exists mom_kin_5th_axis_direction] {
      set or(1) [ROTSET $temp(4) $mom_prev_out_angle_pos(1) $mom_kin_5th_axis_direction  $mom_kin_5th_axis_leader mom_sys_leader(fifth_axis)  $mom_kin_5th_axis_min_limit $mom_kin_5th_axis_max_limit]
   }
   set op(3) $temp(3)
   set op(4) $temp(4)
}


#=============================================================
proc VMOV { n p1 p2 } {
#=============================================================
  upvar $p1 v1 ; upvar $p2 v2

   for {set i 0} {$i < $n} {incr i} {
      set v2($i) $v1($i)
   }
}


#=============================================================
proc LOCK_AXIS_SUB { axis } {
#=============================================================
  global mom_pos mom_lock_axis_value_defined mom_lock_axis_value

   if {$mom_lock_axis_value_defined == 1} {
      return $mom_lock_axis_value 
   } else {
      return $mom_pos($axis)
   }
}


#=============================================================
proc REPOSITION_ERROR_CHECK { warn } {
#=============================================================
  global mom_kin_4th_axis_max_limit mom_kin_4th_axis_min_limit 
  global mom_kin_5th_axis_max_limit mom_kin_5th_axis_min_limit 
  global mom_pos mom_prev_pos mom_alt_pos mom_alt_prev_pos
  global mom_sys_rotary_error mom_warning_info mom_kin_machine_type

  if {$warn != "secondary rotary position being used" || [string index $mom_kin_machine_type 0] != 5} {
    set mom_sys_rotary_error $warn
    return
  }

  set mom_sys_rotary_error 0

  set a4 [expr $mom_alt_pos(3)+360.0]
  set a5 [expr $mom_alt_pos(4)+360.0]
  while {[expr $a4-$mom_kin_4th_axis_min_limit] > 360.0} {set a4 [expr $a4-360.0]}
  while {[expr $a5-$mom_kin_5th_axis_min_limit] > 360.0} {set a5 [expr $a5-360.0]}
  if {$a4 <= $mom_kin_4th_axis_max_limit && $a5 <= $mom_kin_5th_axis_max_limit} {return}

  for {set i 0} {$i < 2} {incr i} {
    set rot($i) [expr $mom_pos([expr $i+3]) - $mom_prev_pos([expr $i+3])]
    while {$rot($i) > 180.0} {set rot($i) [expr $rot($i)-360.0]}
    while {$rot($i) < 180.0} {set rot($i) [expr $rot($i)+360.0]}
    set rot($i) [expr abs($rot($i))]

    set rotalt($i) [expr $mom_alt_pos([expr $i+3]) - $mom_prev_pos([expr $i+3])]
    while {$rotalt($i) > 180.0} {set rotalt($i) [expr $rotalt($i)-360.0]}
    while {$rotalt($i) < 180.0} {set rotalt($i) [expr $rotalt($i)+360.0]}
    set rotalt($i) [expr abs($rotalt($i))]
  }

  if [EQ_is_equal [expr $rot(0)+$rot(1)] [expr $rotalt(0)+$rotalt(1)]] {return}
  set mom_sys_rotary_error $warn
}


#=============================================================
proc ANGLE_CHECK { a axis } {
#=============================================================
upvar $a ang

global mom_kin_4th_axis_max_limit
global mom_kin_5th_axis_max_limit
global mom_kin_4th_axis_min_limit
global mom_kin_5th_axis_min_limit
global mom_kin_4th_axis_direction
global mom_kin_5th_axis_direction

if {$axis == "4"} {
    set min $mom_kin_4th_axis_min_limit 
    set max $mom_kin_4th_axis_max_limit
    set dir $mom_kin_4th_axis_direction 
} else {
    set min $mom_kin_5th_axis_min_limit 
    set max $mom_kin_5th_axis_max_limit
    set dir $mom_kin_5th_axis_direction 
}

if {[EQ_is_equal $min 0.0] && [EQ_is_equal $max 360.0] && $dir == "MAGNITUDE_DETERMINES_DIRECTION"} {
    return 0
} else {
    while {$ang > $max && $ang > [expr $min + 360.0]} {set ang [expr $ang - 360.0]}
    while {$ang < $min && $ang < [expr $max - 360.0]} {set ang [expr $ang + 360.0]}
    if {$ang > $max || $ang < $min} {
        return -1
    } else {
        return 1
    }
}
}


#=============================================================
proc CATCH_WARNING { msg } {
#=============================================================
  global mom_warning_info
  global mom_motion_event
  global mom_event_number

   set level [info level]
   set call_stack ""
   for {set i 1} {$i < $level} {incr i} {
      set call_stack "$call_stack\[ [lindex [info level $i] 0] \]"
   }
   set mom_warning_info "$msg ($mom_motion_event $mom_event_number) $call_stack"
   MOM_catch_warning
}


#=============================================================
proc AXIS_SET { axis } {
#=============================================================

  global mom_sys_leader

   if {$axis == "[string index $mom_sys_leader(fourth_axis) 0]AXIS"} {
      return 3
   } elseif {$axis == "[string index $mom_sys_leader(fifth_axis) 0]AXIS"} {
      return 4
   }
}


#=============================================================
proc WORKPLANE_SET {  } {
#=============================================================
   global mom_cycle_spindle_axis
   global mom_sys_spindle_axis
   global traverse_axis1 traverse_axis2

   if { ![info exists mom_sys_spindle_axis] } {
      set mom_sys_spindle_axis(0) 0.0
      set mom_sys_spindle_axis(1) 0.0
      set mom_sys_spindle_axis(2) 1.0
   }

   if { ![info exists mom_cycle_spindle_axis] } {
      set x $mom_sys_spindle_axis(0)
      set y $mom_sys_spindle_axis(1)
      set z $mom_sys_spindle_axis(2)

      if { [EQ_is_zero $y] && [EQ_is_zero $z] } {
         set mom_cycle_spindle_axis 0
      } elseif { [EQ_is_zero $x] && [EQ_is_zero $z] } {
         set mom_cycle_spindle_axis 1
      } else {
         set mom_cycle_spindle_axis 2
      }
   }

   if { $mom_cycle_spindle_axis == 2 } {
      set traverse_axis1 0 ; set traverse_axis2 1
   } elseif { $mom_cycle_spindle_axis == 0 } {
      set traverse_axis1 1 ; set traverse_axis2 2
   } elseif { $mom_cycle_spindle_axis == 1 } {
      set traverse_axis1 0 ; set traverse_axis2 2
   }
}


#=============================================================
proc EQ_is_equal { s t } {
#=============================================================
   global mom_system_tolerance

   if [info exists mom_system_tolerance] {
      if { [expr abs($s - $t)] <= $mom_system_tolerance } { return 1 } else { return 0 }
   } else {
      return 0
   }
}


#=============================================================
proc SET_LOCK { axis plane value } {
#=============================================================
  upvar $axis a ; upvar $plane p ; upvar $value v

  global mom_kin_machine_type mom_lock_axis mom_lock_axis_plane mom_lock_axis_value
  global mom_warning_info

   switch $mom_kin_machine_type {
      4_axis_head -
      4_AXIS_HEAD -
      4_axis_table -
      4_AXIS_TABLE -
      mill_turn -
      MILL_TURN            {set mtype 4}
      5_axis_dual_table -
      5_AXIS_DUAL_TABLE -
      5_axis_dual_head -
      5_AXIS_DUAL_HEAD -
      5_axis_head_table -
      5_AXIS_HEAD_TABLE    {set mtype 5}
      default { 
         set mom_warning_info "Set lock only vaild for 4 and 5 axis machines"
         return "error"
      }
   } 

   set p -1          

   switch $mom_lock_axis {
      OFF {
         global mom_sys_lock_arc_save
         global mom_kin_arc_output_mode 
         if {[info exists mom_sys_lock_arc_save]} {
             set mom_kin_arc_output_mode $mom_sys_lock_arc_save
             unset mom_sys_lock_arc_save 
             MOM_reload_kinematics
         }
         return "OFF"
      }
      XAXIS {
         set a 0
         switch $mom_lock_axis_plane {
            XYPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 2 
            }
            YZPLAN {
               set mom_warning_info "Invalid plane for lock axis"
               return "error"
            }
            ZXPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 1 
            }
            NONE {
               if {$mtype == 5} {
                  set mom_warning_info "Must specify lock axis plane for 5 axis machine"
                  return "error"
               } else {
                  set v [LOCK_AXIS_SUB $a]
               }
            }
         }
      }
      YAXIS {
         set a 1
         switch $mom_lock_axis_plane {
            XYPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 2 
            }
            YZPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 0 
            }
            ZXPLAN {
               set mom_warning_info "Invalid plane for lock axis"
               return "error"
            }
            NONE {
               if {$mtype == 5} {
                  set mom_warning_info "Must specify lock axis plane for 5 axis machine"
                  return "error"
               } else {
                  set v [LOCK_AXIS_SUB $a]
               }
            }
         }               
      }
      ZAXIS {
         set a 2
         switch $mom_lock_axis_plane {
            YZPLAN {
               set v [LOCK_AXIS_SUB $a]
               set p 0 
            }
            ZXPLAN {
               set v [LOCK_AXIS_SUB $a] 
               set p 1 
            }
            XYPLAN {
               set mom_warning_info "Invalid plane for lock axis"
               return "error"
            }
            NONE {
               if {$mtype == 5} {
                  set mom_warning_info "Must specify lock axis plane for 5 axis machine"
                  return "error"
               } else {
                  set v [LOCK_AXIS_SUB $a]
               }
            }
         }               
      }
      FOURTH {
         set a 3
         set v [LOCK_AXIS_SUB $a]
      }
      FIFTH {
         set a 4
         set v [LOCK_AXIS_SUB $a] 
      }   
      AAXIS {
         set a [AXIS_SET $mom_lock_axis]
         set v [LOCK_AXIS_SUB $a]
      }
      BAXIS {
         set a [AXIS_SET $mom_lock_axis]
         set v [LOCK_AXIS_SUB $a]
      }
      CAXIS {
         set a [AXIS_SET $mom_lock_axis]
         set v [LOCK_AXIS_SUB $a]
      }
   }


   global mom_sys_lock_arc_save
   global mom_kin_arc_output_mode 

   if {![info exists mom_sys_lock_arc_save]} {
      set mom_sys_lock_arc_save $mom_kin_arc_output_mode
   }
   set mom_kin_arc_output_mode "LINEAR"

   MOM_reload_kinematics

return "ON"
}


#=============================================================
proc AUTO_CLAMP {  } {
#=============================================================
#
#  This procedure is used to automatically output clamp and unclamp
#  codes.  This procedure must be placed in the the procedure
#  << PB_CMD_kin_before_motion >>.  By default this procedure will
#  output M10 or M11 to do fourth axis clamping and unclamping or
#  M12 or M13 to do fifth axis clamping and unclamping.  
#

   global mom_pos 
   global mom_prev_pos 
   global mom_sys_auto_clamp
 

   if {![info exists mom_sys_auto_clamp]} {return}
   if {$mom_sys_auto_clamp != "ON"} {return}

   set rotary_out [EQ_is_equal $mom_pos(3) $mom_prev_pos(3)]

   AUTO_CLAMP_1 $rotary_out

   set rotary_out [EQ_is_equal $mom_pos(4) $mom_prev_pos(4)]

   AUTO_CLAMP_2 $rotary_out
}


#=============================================================
proc AUTO_CLAMP_2 { out } {
#=============================================================
#
   global mom_kin_machine_type

   switch $mom_kin_machine_type {
      5_axis_dual_table -
      5_AXIS_DUAL_TABLE -
      5_axis_dual_head -
      5_AXIS_DUAL_HEAD -
      5_axis_head_table -
      5_AXIS_HEAD_TABLE {}
      default           {return}
    }

   global clamp_rotary_fifth_status 

   if {![info exists clamp_rotary_fifth_status]} {set clamp_rotary_fifth_status "UNDEFINED"}

   if {$out == 0 && $clamp_rotary_fifth_status != "UNCLAMPED"} {
      PB_CMD_unclamp_fifth_axis
      set clamp_rotary_fifth_status "UNCLAMPED"
   } elseif {$out == 1 && $clamp_rotary_fifth_status != "CLAMPED"} {
      PB_CMD_clamp_fifth_axis
      set clamp_rotary_fifth_status "CLAMPED"
   }
}


#=============================================================
proc ARCTAN { y x } {
#=============================================================
   global PI

   if [EQ_is_zero $y] { set y 0 }
   if [EQ_is_zero $x] { set x 0 }

   if { [expr $y == 0] && [expr $x == 0] } {
      return 0
   }

   set ang [expr atan2($y,$x)]

   if { $ang < 0 } {
      return [expr $ang + $PI*2]
   } else {
      return $ang
   }
}


#=============================================================
proc CALC_SPHERICAL_RETRACT_POINT { refpt axis cen_sphere rad_sphere int_pts } {
#=============================================================

  upvar $refpt rp ; upvar $axis ta ; upvar $cen_sphere cs 
  upvar $int_pts ip  

   set rad [expr $rad_sphere*$rad_sphere]
   VEC3_sub rp cs v1

   set coeff(2) 1.0
   set coeff(1) [expr ($v1(0)*$ta(0) + $v1(1)*$ta(1) + $v1(2)*$ta(2))*2.0]
   set coeff(0) [expr $v1(0)*$v1(0) + $v1(1)*$v1(1) + $v1(2)*$v1(2) - $rad]

   set num_sol [SOLVE_QUADRATIC coeff roots iroots status degree]
   if {$num_sol == 0} {return 0}

   if {[expr $roots(0)] > [expr $roots(1)] || $num_sol == 1} {
      set d $roots(0)
   } else {
      set d $roots(1)
   }
   set ip(0) [expr $rp(0) + $d*$ta(0)]
   set ip(1) [expr $rp(1) + $d*$ta(1)]
   set ip(2) [expr $rp(2) + $d*$ta(2)]

return [RETRACT_POINT_CHECK rp ta ip]
}






#=============================================================
proc CALC_CYLINDRICAL_RETRACT_POINT { refpt axis dist ret_pt } {
#=============================================================
  upvar $refpt rfp ; upvar $axis ax ; upvar $ret_pt rtp 

#
# return 0 parallel or lies on plane
#        1 unique intersection
#


#
# create plane canonical form
#
  VMOV 3 ax plane
  set plane(3) $dist

  set num [expr $plane(3)-[VEC3_dot rfp plane]]
  set dir [VEC3_dot ax plane]
  if [EQ_is_zero $dir] {return 0}
  for {set i 0} {$i < 3} {incr i} {
    set rtp($i) [expr $rfp($i) + $ax($i)*$num/$dir]
  }
  return [RETRACT_POINT_CHECK rfp ax rtp]
}


#=============================================================
proc ROTATE_VECTOR { plane angle input_vector output_vector } {
#=============================================================
  upvar $output_vector v ; upvar $input_vector v1

   if {$plane == 0} {
      set v(0) $v1(0)
      set v(1) [expr $v1(1)*cos($angle) - $v1(2)*sin($angle)]
      set v(2) [expr $v1(2)*cos($angle) + $v1(1)*sin($angle)]
   } elseif {$plane == 1} {
      set v(0) [expr $v1(0)*cos($angle) + $v1(2)*sin($angle)]
      set v(1) $v1(1)
      set v(2) [expr $v1(2)*cos($angle) - $v1(0)*sin($angle)]
   } elseif {$plane == 2} {
      set v(0) [expr $v1(0)*cos($angle) - $v1(1)*sin($angle)]
      set v(1) [expr $v1(1)*cos($angle) + $v1(0)*sin($angle)]
      set v(2) $v1(2)
   }
}


#=============================================================
proc RETRACT_POINT_CHECK { refpt axis retpt } {
#=============================================================
  upvar $refpt rfp ; upvar $axis ax ; upvar $retpt rtp 

# 
#  determine if retraction point is "below" the retraction plane
#  if the tool is already in a safe position, do not retract
#
#  return 0	no retract needed
#         1     retraction needed
#

  VEC3_sub rtp rfp vec
  if {[VEC3_is_zero vec]} {return 0}
  set x [VEC3_unitize vec vec1]
  set dir [VEC3_dot ax vec1]
  if {$dir <= 0.0} {
    return 0
  } else {
    return 1
  }
}


#=============================================================
proc AUTO_CLAMP_1 { out } {
#=============================================================
#
   global clamp_rotary_fourth_status 
 
   if {![info exists clamp_rotary_fourth_status]} {set clamp_rotary_fourth_status "UNDEFINED"}

   if {$out  == 0 && $clamp_rotary_fourth_status != "UNCLAMPED"} {
      PB_CMD_unclamp_fourth_axis
      set clamp_rotary_fourth_status "UNCLAMPED"
   } elseif {$out == 1 && $clamp_rotary_fourth_status != "CLAMPED"} {
      PB_CMD_clamp_fourth_axis
      set clamp_rotary_fourth_status "CLAMPED"
   }
}


#=============================================================
proc ROTARY_AXIS_RETRACT {  } {
#=============================================================
#
#  This procedure is used by four and five axis posts to retract
#  from the part when the rotary axis become discontinuous.  This
#  procedure is activated by setting the axis limit violation 
#  action to "retract / re-engage".  
#
 
   global mom_sys_rotary_error
   global mom_motion_event 

   if {[info exists mom_sys_rotary_error] && [info exists mom_motion_event]} { 
     if {$mom_sys_rotary_error != 0 && $mom_motion_event == "linear_move"} { 
         global mom_kin_reengage_distance
         global mom_kin_rotary_reengage_feedrate 
         global mom_kin_rapid_feed_rate                      
         global mom_pos 
         global mom_prev_pos 
         global mom_prev_rot_ang_4th mom_prev_rot_ang_5th
         global mom_kin_4th_axis_direction mom_kin_4th_axis_leader 
         global mom_out_angle_pos mom_kin_5th_axis_direction mom_kin_5th_axis_leader 
         global mom_kin_4th_axis_center_offset mom_kin_5th_axis_center_offset
         global mom_sys_leader mom_tool_axis mom_prev_tool_axis mom_kin_4th_axis_type
         global mom_kin_spindle_axis 
         global mom_alt_pos mom_prev_alt_pos mom_feed_rate 
         global mom_kin_rotary_reengage_feedrate 
         global mom_feed_engage_value mom_feed_cut_value
         global mom_kin_4th_axis_limit_action mom_warning_info
         global mom_kin_4th_axis_min_limit mom_kin_4th_axis_max_limit
         global mom_kin_5th_axis_min_limit mom_kin_5th_axis_max_limit

        #
        #  Check for the limit action being warning only.  If so, issue warning and leave
        #

         if {$mom_kin_4th_axis_limit_action == "Warning"} {
            set mom_warning_info  "Rotary axis limit violated, discontinuous motion may result"
            MOM_catch_warning
            unset mom_sys_rotary_error
            return 
         }
        #
        # The previous rotary info is only available after the first motion.
        #
         if {![info exists mom_prev_rot_ang_4th]} {  
            set mom_prev_rot_ang_4th [MOM_ask_address_value fourth_axis]
         }
         if {![info exists mom_prev_rot_ang_5th]} {  
            set mom_prev_rot_ang_5th [MOM_ask_address_value fifth_axis]
         }

        # 
        #  Determine the type of rotary violation encountered.  There are
        #  three distinct possibilities.
        #
        #  "ROTARY CROSSING LIMIT" and a four axis machine tool.  The fourth 
        #      axis will be repositioned by either +360 or -360 before 
        #      re-engaging. (roterr=0)
        #
        #  "ROTARY CROSSING LIMIT" and a five axis machine tool.  There are two
        #      possible solutions.  If the axis that crossed a limit can be 
        #      repositioned by adding or subtracting 360, then that solution 
        #      will be used.  (roterr=0) If there is only one position available and it is
        #      not in the valid travel limits, then the alternate position will
        #      be tested.  If valid, then the "secondary rotary position being used" 
        #      method will be used. (roterr=2)
        #      If the aternate position cannot be used a warning will be given.
        #
        #  "secondary rotary position being used".  Can only occur with a five 
        #      axis machine tool.  The tool will reposition to the alternate
        #      current rotary position and re-engage to the alternate current 
        #      linear position.  (roterr=1)
        #
        #      (roterr=0)
        #      Rotary Reposition : mom_prev_pos(3,4) +- 360
        #      Linear Re-Engage : mom_prev_pos(0,1,2)
        #      Final End Point : mom_pos(0-4)
        #
        #      (roterr=1)
        #      Rotary Reposition : mom_prev_alt_pos(3,4) 
        #      Linear Re-Engage : mom_prev_alt_pos(0,1,2)
        #      Final End Point : mom_pos(0-4)
        #
        #      (roterr=2)
        #      Rotary Reposition : mom_prev_alt_pos(3,4) 
        #      Linear Re-Engage : mom_prev_alt_pos(0,1,2)
        #      Final End Point : mom_alt_pos(0-4)
        #
        #      For all cases, a warning will be given if it is not possible to
        #      to cut from the re-calculated previous position to move end point.
        #      For all valid cases the tool will, retract from the part, reposition
        #      the rotary axis and re-engage back to the part.

         if {$mom_sys_rotary_error == "ROTARY CROSSING LIMIT." } {
             global mom_kin_machine_type
             switch $mom_kin_machine_type {
                 5_axis_dual_table -
                 5_AXIS_DUAL_TABLE -
                 5_axis_dual_head -
                 5_AXIS_DUAL_HEAD -
                 5_axis_head_table -
                 5_AXIS_HEAD_TABLE {

                     set d [expr $mom_out_angle_pos(0) - $mom_prev_rot_ang_4th] 
 
                     if {[expr abs($d)] > 180.0} {
                         set min $mom_kin_4th_axis_min_limit 
                         set max $mom_kin_4th_axis_max_limit
                         if {$d > 0.0} {
                             set ang [expr $mom_prev_rot_ang_4th+360.0]
                         } else {
                             set ang [expr $mom_prev_rot_ang_4th-360.0]
                         }
                     } else {
                         set min $mom_kin_5th_axis_min_limit 
                         set max $mom_kin_5th_axis_max_limit 
                         set d [expr $mom_out_angle_pos(1) - $mom_prev_rot_ang_5th]
                         if {$d > 0.0} {
                             set ang [expr $mom_prev_rot_ang_5th+360.0]
                         } else {
                             set ang [expr $mom_prev_rot_ang_5th-360.0]
                         }
                     }

                     if {$ang >= $min && $ang <= $max } {
                         set roterr 0
                     } else {
                         set roterr 2
                     }
                 }
                 default {set roterr 0}
             }
         } else {
             set roterr 1
         }
         unset mom_sys_rotary_error

        # Retract from part

         VMOV 5 mom_pos save_pos
         VMOV 5 mom_prev_pos save_prev_pos
         VMOV 2 mom_out_angle_pos save_out_angle_pos
         set save_feedrate $mom_feed_rate

         global mom_sys_spindle_axis
         GET_SPINDLE_AXIS mom_prev_tool_axis

         global mom_kin_retract_type
         global mom_kin_retract_distance
         global mom_kin_retract_plane

         if { ![info exists mom_kin_retract_distance] } {
            if [info exists mom_kin_retract_plane] {
              # Convert legacy variable
               set mom_kin_retract_distance $mom_kin_retract_plane
            } else {
               set mom_kin_retract_distance 10.0
            }
         }

         if { ![info exists mom_kin_retract_type] } {
            set mom_kin_retract_type "DISTANCE"
         }

        # Pre-release type conversion
         if [string match "PLANE" $mom_kin_retract_type] {
            set mom_kin_retract_type "SURFACE"
         }

         switch $mom_kin_retract_type {
             SURFACE {
               set cen(0) 0.0
               set cen(1) 0.0
               set cen(2) 0.0
               if [info exists mom_kin_4th_axis_center_offset] {
                  VEC3_add cen mom_kin_4th_axis_center_offset cen
               }

               if {$mom_kin_4th_axis_type == "Table"} {
                  set num_sol [CALC_CYLINDRICAL_RETRACT_POINT mom_prev_pos mom_kin_spindle_axis  $mom_kin_retract_distance ret_pt]
               } else {
                  set num_sol [CALC_SPHERICAL_RETRACT_POINT mom_prev_pos mom_prev_tool_axis cen  $mom_kin_retract_distance ret_pt]
               }
               if {$num_sol != 0} {VEC3_add ret_pt cen mom_pos}
             }

             DISTANCE -
             default {
               set mom_pos(0) [expr $mom_prev_pos(0)+$mom_kin_retract_distance*$mom_sys_spindle_axis(0)]
               set mom_pos(1) [expr $mom_prev_pos(1)+$mom_kin_retract_distance*$mom_sys_spindle_axis(1)]
               set mom_pos(2) [expr $mom_prev_pos(2)+$mom_kin_retract_distance*$mom_sys_spindle_axis(2)]
               set num_sol 1
             }
         }


         global mom_motion_distance
         global mom_feed_rate_number
         global mom_sys_frn_factor
         global mom_feed_retract_value
         global mom_feed_approach_value
  

         set dist [expr $mom_kin_reengage_distance*2.0]

         if {$num_sol != 0} {
        #
        # Retract from the part at rapid feed rate.  This is the same for all conditions.
        #
            MOM_suppress once fourth_axis fifth_axis            
            set mom_feed_rate $mom_feed_retract_value                      
            if [EQ_is_equal $mom_feed_rate 0.0] {set mom_feed_rate $mom_kin_rapid_feed_rate}
            VEC3_sub mom_pos mom_prev_pos del_pos
            set dist [VEC3_mag del_pos] 
            set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate)/ $dist]
            FEEDRATE_SET
            set retract "yes"
         } else {
            set mom_warning_info "Retraction geometry is defined inside of the current point.  \nNo retraction will be output.  Set the retraction distance to a greater value."
            MOM_catch_warning
            set retract "no"
         }

         if {$roterr == 0} {
#
#  This section of code handles the case where a limit forces a reposition to an angle
#  by adding or subtracting 360 until the new angle is within the limits.
#  This is either a four axis case or a five axis case where it is not a problem
#  with the inverse kinematics forcing a change of solution.
#  This is only a case of "unwinding" the table.
#
            if {$retract == "yes"} {PB_CMD_retract_move}
           #
           # move to alternate rotary position
           #
            if [info exists mom_kin_4th_axis_direction] {
               set mom_out_angle_pos(0) [ROTSET $mom_prev_pos(3) $mom_out_angle_pos(0)  $mom_kin_4th_axis_direction  $mom_kin_4th_axis_leader  mom_sys_leader(fourth_axis)  $mom_kin_4th_axis_min_limit  $mom_kin_4th_axis_max_limit]
            }
            if [info exists mom_kin_5th_axis_direction] {
               set mom_out_angle_pos(1) [ROTSET $mom_prev_pos(4) $mom_out_angle_pos(1)  $mom_kin_5th_axis_direction  $mom_kin_5th_axis_leader  mom_sys_leader(fifth_axis)  $mom_kin_5th_axis_min_limit  $mom_kin_5th_axis_max_limit]
            }
            PB_CMD_reposition_move
	     #
	     #  position back to part at approach feed rate
	     #
            GET_SPINDLE_AXIS mom_prev_tool_axis
            for {set i 0} {$i < 3} {incr i} {
               set mom_pos($i) [expr $mom_prev_pos($i)+$mom_kin_reengage_distance*$mom_sys_spindle_axis($i)]
            }
            set mom_feed_rate $mom_feed_approach_value                      
            if [EQ_is_equal $mom_feed_rate 0.0] {set mom_feed_rate $mom_kin_rapid_feed_rate}
            set dist [expr $dist-$mom_kin_reengage_distance]
            if [EQ_is_zero $dist] {set dist .0001}
            set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate) / $dist ]
            FEEDRATE_SET
            MOM_suppress once fourth_axis fifth_axis
            PB_CMD_linear_move
	     #
	     #  feed back to part at engage feed rate
	     #        
            MOM_suppress once fourth_axis fifth_axis
            if {$mom_feed_engage_value  > 0.0} {
               set mom_feed_rate $mom_feed_engage_value  
            } elseif {$mom_feed_cut_value  > 0.0} {
               set mom_feed_rate $mom_feed_cut_value  
            } else {
               set mom_feed_rate 10.0
            }
            FEEDRATE_SET
            VEC3_sub mom_pos mom_prev_pos del_pos
            set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate) / $mom_kin_reengage_distance ]
            VMOV 3 mom_prev_pos mom_pos
            PB_CMD_linear_move

            VEC3_sub mom_pos save_pos del_pos
            set dist [VEC3_mag del_pos]
            set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate)/ $dist]
            FEEDRATE_SET

            VMOV 5 save_pos mom_pos
            VMOV 5 save_prev_pos mom_prev_pos
            VMOV 2 save_out_angle_pos mom_out_angle_pos
         } else {
#
#  This section of code handles the case where there are two solutions to the tool axis inverse kinematics.
#  The post is forced to change from one solution to the other.  This causes a discontinuity in the tool path.
#  The post needs to retract, rotate to the new rotaries, then position back to the part using the alternate
#  solution.
# 
            #
            #  Check for rotary axes in limits before retracting
            # 
            set res [ANGLE_CHECK mom_prev_alt_pos(3) 4]
            if {$res == 1} {
                set mom_out_angle_pos(0) [ROTSET $mom_prev_alt_pos(3) $mom_prev_rot_ang_4th  $mom_kin_4th_axis_direction  $mom_kin_4th_axis_leader  mom_sys_leader(fourth_axis)  $mom_kin_4th_axis_min_limit  $mom_kin_4th_axis_max_limit]
            } elseif {$res == 0} {
                set mom_out_angle_pos(0) $mom_prev_alt_pos(3)
            } else {
                set mom_warning_info "Not possible to position to alternate rotary axis positions.  Gouging may result" 
                MOM_catch_warning
                VMOV 5 save_pos mom_pos
                return
           }
            set res [ANGLE_CHECK mom_prev_alt_pos(4) 5]
            if {$res == 1} {
                set mom_out_angle_pos(1) [ROTSET $mom_prev_alt_pos(4) $mom_prev_rot_ang_5th  $mom_kin_5th_axis_direction  $mom_kin_5th_axis_leader  mom_sys_leader(fifth_axis)  $mom_kin_5th_axis_min_limit  $mom_kin_5th_axis_max_limit]
            } elseif {$res == 0} {
                set mom_out_angle_pos(1) $mom_prev_alt_pos(4)
            } else {
                set mom_warning_info "Not possible to position to alternate rotary axis positions.  Gouging may result" 
                MOM_catch_warning
                VMOV 5 save_pos mom_pos
                return
            }
            if {$retract == "yes"} {PB_CMD_retract_move}
           #
           # move to alternate rotary position
           #
            set mom_pos(3) $mom_prev_alt_pos(3)
            set mom_pos(4) $mom_prev_alt_pos(4)
            set mom_prev_rot_ang_4th $mom_out_angle_pos(0)
            set mom_prev_rot_ang_5th $mom_out_angle_pos(1)
            VMOV 3 mom_prev_pos mom_pos
            PB_CMD_reposition_move
	     #
	     #  position back to part at approach feed rate
	     #
            set mom_prev_pos(3) $mom_pos(3)
            set mom_prev_pos(4) $mom_pos(4)
            for {set i 0} {$i < 3} {incr i} {
               set mom_pos($i) [expr $mom_prev_alt_pos($i)+$mom_kin_reengage_distance*$mom_sys_spindle_axis($i)]
            }
            MOM_suppress once fourth_axis fifth_axis
            set mom_feed_rate $mom_feed_approach_value                      
            if [EQ_is_equal $mom_feed_rate 0.0] {set mom_feed_rate $mom_kin_rapid_feed_rate}
            set rdist [expr $dist-$mom_kin_reengage_distance]
            if {$rdist <= 0.0} {set rdist $mom_kin_reengage_distance}
            set mom_feed_rate_number [expr $mom_sys_frn_factor*$mom_feed_rate / $rdist ]
            FEEDRATE_SET
            PB_CMD_linear_move

	     #
	     #  feed back to part at engage feed rate
	     #        
            MOM_suppress once fourth_axis fifth_axis
            if {$mom_feed_engage_value  > 0.0} {
               set mom_feed_rate $mom_feed_engage_value  
            } elseif {$mom_feed_cut_value  > 0.0} {
               set mom_feed_rate $mom_feed_cut_value  
            } else {
               set mom_feed_rate 10.0
            }
            VEC3_sub mom_pos mom_prev_alt_pos del_pos
            set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate) / $mom_kin_reengage_distance ]
            VMOV 3 mom_prev_alt_pos mom_pos
            FEEDRATE_SET
            PB_CMD_linear_move

 
            VEC3_sub mom_pos save_pos del_pos
            set dist [VEC3_mag del_pos]
            if {$dist <= 0.0} {set dist $mom_kin_reengage_distance}
            set mom_feed_rate_number [expr ($mom_sys_frn_factor*$mom_feed_rate)/ $dist]
            FEEDRATE_SET

            if {$roterr == 2} {
                VMOV 5 mom_alt_pos mom_pos
            } else {
                VMOV 5 save_pos mom_pos
            }

            set mom_out_angle_pos(0) [ROTSET $mom_pos(3) $mom_out_angle_pos(0)  $mom_kin_4th_axis_direction  $mom_kin_4th_axis_leader  mom_sys_leader(fourth_axis)  $mom_kin_4th_axis_min_limit  $mom_kin_4th_axis_max_limit]
            set mom_out_angle_pos(1) [ROTSET $mom_pos(4) $mom_out_angle_pos(1)  $mom_kin_5th_axis_direction  $mom_kin_5th_axis_leader  mom_sys_leader(fifth_axis)  $mom_kin_5th_axis_min_limit  $mom_kin_5th_axis_max_limit]

            MOM_reload_variable -a mom_out_angle_pos
            MOM_reload_variable -a mom_pos
            MOM_reload_variable -a mom_prev_pos
         }
   
         set save_feedrate $mom_feed_rate
         FEEDRATE_SET
      }
   }
}


#=============================================================
proc ROTSET { angle prev_angle dir kin_leader sys_leader min max } {
#=============================================================
#
#  This procedure will take an input angle and format for a specific machine.
#  It will also validate that the angle is within the specified limits of
#  machine.
#
#  angle	      angle to be output.
#  prev_angle	previous angle output.  It should be mom_out_angle_pos
#  dir		can be either MAGNITUDE_DETERMINES_DIRECTION or 
#		      SIGN_DETERMINES_DIRECTION
#  kin_leader	leader (usually A, B or C) defined by postbuilder
#  sys_leader     leader that is created by rotset.  It could be C-.
#  min            minimum degrees of travel for current axis		
#  max            maximum degrees of travel for current axis
#
#  This procedure is called the follow functions.
#  LOCK_AXIS, RETRACT_ROTARY_AXIS, MOM_rotate, LINEARIZE_OUTPUT and MILL_TURN
#
#
#=============================================================

   upvar $sys_leader lead

#
#  Make sure angle is 0-360 to start with.
#
   LIMIT_ANGLE $angle

   if {$dir == "MAGNITUDE_DETERMINES_DIRECTION"} {
#
#  If magnitude determines direction and total travel is less than or equal
#  to 360, we can assume there is at most one valid solution.  Find it and
#  leave.  Check for the total travel being less than 360 and give a warning
#  if a valid position cannot be found.
#
      set travel [expr $max - $min]
      if {$travel <= 360.0} {
          while {$angle < $min} {set angle [expr $angle + 360.0]}
          while {$angle > $max} {set angle [expr $angle - 360.0]}
          if {$angle < $min} {
              global mom_warning_info 
              set mom_warning_info "$kin_leader-axis is under minimum or over maximum.  Assumed default."
              MOM_catch_warning
          }
      } else {
#
#  If magnitude determines direction and total travel is greater than 
#  360, we need to find the best solution that cause a move of 180 degree
#  or less.  
#
          while {[expr abs([expr $angle - $prev_angle])] > 180.0} {
              if {[expr $angle - $prev_angle] < -180.0} {
                  set angle [expr $angle + 360.0]
              } elseif {[expr $angle - $prev_angle] > 180.0} {
                  set angle [expr $angle - 360.0]
              }
          }
#
#  Check for the best solution being out of the travel limits.  Use the
#  next best valid solution.
#
          while {$angle < $min} {set angle [expr $angle + 360.0]}
          while {$angle > $max} {set angle [expr $angle - 360.0]}
      }
   } elseif {$dir == "SIGN_DETERMINES_DIRECTION"} {
#
#  Sign determines direction.  Determine whether the shortest distance is
#  clockwise or counterclockwise.  If counterclockwise append a "-" sign
#  to the address leader.
#
      set del [expr $angle-$prev_angle]
      if {($del < 0.0 && $del > -180.0) || $del > 180.0} {
          set lead "$kin_leader-"
      } else {
          set lead $kin_leader
      } 
#
#  There are no alternate solutions if the position is out of limits.  Give 
#  a warning a leave.
#
      if {$angle < $min || $angle > $max} {
          global mom_warning_info 
          set mom_warning_info "$kin_leader-axis is under minimum or over maximum.  Assumed default."
          MOM_catch_warning
      }
   }

return $angle
}


#=============================================================
proc GET_SPINDLE_AXIS { input_tool_axis } {
#=============================================================
  upvar $input_tool_axis axis

  global mom_kin_4th_axis_type
  global mom_kin_4th_axis_plane
  global mom_kin_5th_axis_type
  global mom_kin_spindle_axis
  global mom_sys_spindle_axis
  
  if {$mom_kin_4th_axis_type == "Table"} {
    VMOV 3 mom_kin_spindle_axis mom_sys_spindle_axis 
  } elseif {$mom_kin_5th_axis_type == "Table"} {
    VMOV 3 axis vec
    if {$mom_kin_4th_axis_plane == "XY"} {
      set vec(2) 0.0
    } elseif {$mom_kin_4th_axis_plane == "ZX"} {
      set vec(1) 0.0
    } elseif {$mom_kin_4th_axis_plane == "YZ"} {
      set vec(0) 0.0
    }
    set len [VEC3_unitize vec mom_sys_spindle_axis]
    if [EQ_is_zero $len] {set mom_sys_spindle_axis(2) 1.0}
  } else {
    VMOV 3 axis mom_sys_spindle_axis
  }
}


#=============================================================
proc LIMIT_ANGLE { a } {
#=============================================================

   while {$a < 0.0} {set a [expr $a+360.0]}
   while {$a >= 360.0} {set a [expr $a-360.0]}	

return $a
}


if [info exists mom_sys_start_of_program_flag] {
   if [llength [info commands PB_CMD_kin_start_of_program] ] {
      PB_CMD_kin_start_of_program
   }
} else {
   set mom_sys_head_change_init_program 1
   set mom_sys_start_of_program_flag 1
}

