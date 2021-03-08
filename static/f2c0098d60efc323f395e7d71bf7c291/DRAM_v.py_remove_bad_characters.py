from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dram_V_Py_Remove_Bad_Characters_V0_1_0 = CommandToolBuilder(tool="DRAM_v.py_remove_bad_characters", base_command=["DRAM-v.py", "remove_bad_characters"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input_fasta", doc=InputDocumentation(doc="Fasta file to remove ; and = from headers (default:\nNone)")), ToolInput(tag="in_input_vir_sorter_affi_contigs", input_type=File(optional=True), prefix="--input_virsorter_affi_contigs", doc=InputDocumentation(doc="Fasta file to remove ; and = from headers (default:\nNone)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output file. If cleaning a fasta file the\noutput file name must have no = or ;. (default: None)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file. If cleaning a fasta file the\noutput file name must have no = or ;. (default: None)\n"))], container="quay.io/biocontainers/dram:1.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_V_Py_Remove_Bad_Characters_V0_1_0().translate("wdl")

