from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean

Iterative_Cdhit_V0_1_0 = CommandToolBuilder(tool="iterative_cdhit", base_command=["iterative_cdhit"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="input FASTA file of protein sequences [_combined_files]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_number_of_isolates", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of isolates [1]")), ToolInput(tag="in_cdhit_output_filename", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="cd-hit output filename [_clustered]")), ToolInput(tag="in_output_filename_filtered", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="output filename for filtered sequences [_clustered_filtered.fa]")), ToolInput(tag="in_lower_bound_percentage", input_type=Float(optional=True), prefix="-l", doc=InputDocumentation(doc="lower bound percentage identity [98.0]")), ToolInput(tag="in_upper_bound_percentage", input_type=Float(optional=True), prefix="-u", doc=InputDocumentation(doc="upper bound percentage identity [99.0]")), ToolInput(tag="in_step_size_percentage", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="step size for percentage identity [0.5]")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[ToolOutput(tag="out_cdhit_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_cdhit_output_filename", type_hint=File()), doc=OutputDocumentation(doc="cd-hit output filename [_clustered]")), ToolOutput(tag="out_output_filename_filtered", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_filtered", type_hint=File()), doc=OutputDocumentation(doc="output filename for filtered sequences [_clustered_filtered.fa]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iterative_Cdhit_V0_1_0().translate("wdl", allow_empty_container=True)

