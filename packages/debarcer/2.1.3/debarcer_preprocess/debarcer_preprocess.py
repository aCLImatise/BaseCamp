from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, File

Debarcer_Preprocess_V0_1_0 = CommandToolBuilder(tool="debarcer_preprocess", base_command=["debarcer", "preprocess"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--OutDir", doc=InputDocumentation(doc="Output directory. Available from command or config")), ToolInput(tag="in_read_one", input_type=Int(optional=True), prefix="--Read1", doc=InputDocumentation(doc="Path to first FASTQ file.")), ToolInput(tag="in_read_two", input_type=Int(optional=True), prefix="--Read2", doc=InputDocumentation(doc="Path to second FASTQ file, if applicable")), ToolInput(tag="in_read_three", input_type=Int(optional=True), prefix="--Read3", doc=InputDocumentation(doc="Path to third FASTQ file, if applicable")), ToolInput(tag="in_prep_name", input_type=String(optional=True), prefix="--Prepname", doc=InputDocumentation(doc="Name of library prep to use (defined in\nlibrary_prep_types.ini)")), ToolInput(tag="in_prep_file", input_type=File(optional=True), prefix="--Prepfile", doc=InputDocumentation(doc="Path to your library_prep_types.ini file")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--Config", doc=InputDocumentation(doc="Path to your config file")), ToolInput(tag="in_prefix", input_type=Int(optional=True), prefix="--Prefix", doc=InputDocumentation(doc="Prefix for naming umi-reheradered fastqs. Use Prefix\nfrom Read1 if not provided\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Available from command or config"))], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Preprocess_V0_1_0().translate("wdl")

