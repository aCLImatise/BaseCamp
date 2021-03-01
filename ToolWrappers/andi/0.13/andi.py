from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String, Float

Andi_V0_1_0 = CommandToolBuilder(tool="andi", base_command=["andi"], inputs=[ToolInput(tag="in_bootstrap", input_type=Int(optional=True), prefix="--bootstrap", doc=InputDocumentation(doc="Print additional bootstrap matrices")), ToolInput(tag="in_file_of_filenames", input_type=File(optional=True), prefix="--file-of-filenames", doc=InputDocumentation(doc="Read additional filenames from FILE; one per line")), ToolInput(tag="in_join", input_type=Boolean(optional=True), prefix="--join", doc=InputDocumentation(doc="Treat all sequences from one file as a single genome")), ToolInput(tag="in_low_memory", input_type=Boolean(optional=True), prefix="--low-memory", doc=InputDocumentation(doc="Use less memory at the cost of speed")), ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="Pick an evolutionary model of 'Raw', 'JC', 'Kimura'; default: JC")), ToolInput(tag="in_significance_anchor_default", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="Significance of an anchor; default: 0.025")), ToolInput(tag="in_progress", input_type=String(optional=True), prefix="--progress", doc=InputDocumentation(doc="Print a progress bar 'always', 'never', or 'auto'; default: auto")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Set the number of threads; by default, all processors are used")), ToolInput(tag="in_truncate_names", input_type=String(optional=True), prefix="--truncate-names", doc=InputDocumentation(doc="names to ten characters")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Prints additional information")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_files_dot_dot_dot", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Andi_V0_1_0().translate("wdl", allow_empty_container=True)

