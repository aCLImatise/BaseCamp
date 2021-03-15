from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Remove_Gaps_Msa_V0_1_0 = CommandToolBuilder(tool="remove_gaps_msa", base_command=["remove_gaps_msa"], inputs=[ToolInput(tag="in_name_write_sequences", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file to write sequences to")), ToolInput(tag="in_minimum_case_coverage", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Minimum case coverage to keep locus")), ToolInput(tag="in_use_bases_ones", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Use all bases, not just uppercase ones")), ToolInput(tag="in_print_loci_discarded", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Do not print which loci were discarded")), ToolInput(tag="in_msa_file", input_type=String(), position=0, doc=InputDocumentation(doc="file containing MSA"))], outputs=[ToolOutput(tag="out_name_write_sequences", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_write_sequences", type_hint=File()), doc=OutputDocumentation(doc="Name of output file to write sequences to"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Gaps_Msa_V0_1_0().translate("wdl")

