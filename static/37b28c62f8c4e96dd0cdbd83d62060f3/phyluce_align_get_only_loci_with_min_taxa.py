from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Float, File

Phyluce_Align_Get_Only_Loci_With_Min_Taxa_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_only_loci_with_min_taxa", base_command=["phyluce_align_get_only_loci_with_min_taxa"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to screen.\n(default: None)")), ToolInput(tag="in_tax_a", input_type=Int(optional=True), prefix="--taxa", doc=InputDocumentation(doc="The total number of taxa in all alignments. (default:\nNone)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="The output dir in which to store copies of the\nalignments (default: None)")), ToolInput(tag="in_percent", input_type=Float(optional=True), prefix="--percent", doc=InputDocumentation(doc="The percent of taxa to require (default: 0.75)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format. (default: nexus)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use. (default: INFO)")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs. (default: None)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n(default: 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Only_Loci_With_Min_Taxa_V0_1_0().translate("wdl", allow_empty_container=True)

