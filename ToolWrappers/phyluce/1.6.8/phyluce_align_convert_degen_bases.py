from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int

Phyluce_Align_Convert_Degen_Bases_V0_1_0 = CommandToolBuilder(tool="phyluce_align_convert_degen_bases", base_command=["phyluce_align_convert_degen_bases"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to be screened.\n(default: None)")), ToolInput(tag="in_directory_store_resultingalignments", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the resulting\nalignments. (default: None)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format (default: nexus)")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The output alignment format (default: nexus)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use. (default: INFO)")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs. (default: None)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n(default: 1)\n")), ToolInput(tag="in_var_7", input_type=String(), position=0, doc=InputDocumentation(doc="[--input-format {fasta,nexus,phylip,phylip-relaxed,clustal,emboss,stockholm}]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Convert_Degen_Bases_V0_1_0().translate("wdl", allow_empty_container=True)

