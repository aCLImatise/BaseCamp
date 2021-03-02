from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Boolean

Marvel_V0_1_0 = CommandToolBuilder(tool="marvel", base_command=["marvel"], inputs=[ToolInput(tag="in_input_dir", input_type=Directory(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="Path to a folder containing metagenomic bins in .fa or\n.fasta format")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU threads to be used by Prokka and hmmscan\n(default=1)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Bin minimum size")), ToolInput(tag="in_confidence", input_type=String(optional=True), prefix="--confidence", doc=InputDocumentation(doc="Confidence threshold")), ToolInput(tag="in_db", input_type=Directory(optional=True), prefix="--db", doc=InputDocumentation(doc="Database directory")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose output")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debug mode")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Keep all intermediate files")), ToolInput(tag="in_cite", input_type=Boolean(optional=True), prefix="--cite", doc=InputDocumentation(doc="Show citations"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Marvel_V0_1_0().translate("wdl", allow_empty_container=True)

