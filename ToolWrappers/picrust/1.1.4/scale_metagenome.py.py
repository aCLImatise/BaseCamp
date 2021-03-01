from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Scale_Metagenome_Py_V0_1_0 = CommandToolBuilder(tool="scale_metagenome.py", base_command=["scale_metagenome.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_input_seq_depth_file", input_type=File(optional=True), prefix="--input_seq_depth_file", doc=InputDocumentation(doc="an input tab-delimited table, with samples as the\nfirst column and an integer sequencing depth as the\nsecond [REQUIRED]")), ToolInput(tag="in_input_count_table", input_type=String(optional=True), prefix="--input_count_table", doc=InputDocumentation(doc="the input trait counts on per otu basis in biom format\n(can be gzipped) [REQUIRED]")), ToolInput(tag="in_output_meta_genome_table", input_type=File(optional=True), prefix="--output_metagenome_table", doc=InputDocumentation(doc="the output file for the scaled metagenome [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_meta_genome_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_meta_genome_table", type_hint=File()), doc=OutputDocumentation(doc="the output file for the scaled metagenome [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scale_Metagenome_Py_V0_1_0().translate("wdl", allow_empty_container=True)

