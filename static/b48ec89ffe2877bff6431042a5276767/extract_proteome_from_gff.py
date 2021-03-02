from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Directory

Extract_Proteome_From_Gff_V0_1_0 = CommandToolBuilder(tool="extract_proteome_from_gff", base_command=["extract_proteome_from_gff"], inputs=[ToolInput(tag="in_output_suffix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output suffix [proteome.faa]")), ToolInput(tag="in_translation_table", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="translation table [11]")), ToolInput(tag="in_filter_sequences_missing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="filter sequences with missing data")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="print version and exit"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Proteome_From_Gff_V0_1_0().translate("wdl", allow_empty_container=True)

