from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, File

Cov2Lr_Pl_V0_1_0 = CommandToolBuilder(tool="cov2lr.pl", base_command=["cov2lr.pl"], inputs=[ToolInput(tag="in_amplicon_exon_based", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="this is amplicon or exon based calling.  By default, it will aggregate at gene level.")), ToolInput(tag="in_adjust_mad_transforming", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="to adjust the MAD when transforming the distribution.  Default: no, or just simple linear function.\nIf not sure, do not use this option.  It might have better performance when cohort size is over 30.")), ToolInput(tag="in_sspecify_control_samples", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="(s)\nSpecify the control sample(s), if aplicable.  Multiple controls are allowed, which are separated by ':'")), ToolInput(tag="in_failed_factor_individual", input_type=Float(optional=True), prefix="-F", doc=InputDocumentation(doc="The failed factor for individual amplicons.  If (the 80th percentile of an amplicon depth)/(the global median depth)\nis less than the argument, the amplicon is considered failed and will not be used in calculation.  Default: 0.2.")), ToolInput(tag="in_take_file_gender", input_type=File(optional=True), prefix="-G", doc=InputDocumentation(doc="Take a file of gender information.  Two columns, first is sample name, second is either M or F.  If not provided,\nthe program will try to guess.")), ToolInput(tag="in_gender_testing_chry", input_type=Int(optional=True), prefix="-Y", doc=InputDocumentation(doc="For gender testing, if chrY is designed.  Default: 0.15.  If chrY is carefully designed, such as Foundation's assay,\ndefault is good.  For exome, the number should be higher, such as 0.3.")), ToolInput(tag="in_output_parameters_seqcfrozentxt", input_type=File(optional=True), prefix="-Z", doc=InputDocumentation(doc="to output the frozen_file and all parameters into file Seq2C.frozen.txt"))], outputs=[ToolOutput(tag="out_output_parameters_seqcfrozentxt", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_parameters_seqcfrozentxt", type_hint=File()), doc=OutputDocumentation(doc="to output the frozen_file and all parameters into file Seq2C.frozen.txt"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cov2Lr_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

