from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Boolean

Parallel_All_Against_All_Blastp_V0_1_0 = CommandToolBuilder(tool="parallel_all_against_all_blastp", base_command=["parallel_all_against_all_blastp"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_output_filename_blast", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename for blast results [blast_results]")), ToolInput(tag="in_makeblastdb_executable", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="makeblastdb executable [makeblastdb]")), ToolInput(tag="in_blastp_executable", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="blastp executable [blastp]")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT")), ToolInput(tag="in_file_dot_faa", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename_blast", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_blast", type_hint=File()), doc=OutputDocumentation(doc="output filename for blast results [blast_results]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_All_Against_All_Blastp_V0_1_0().translate("wdl", allow_empty_container=True)

