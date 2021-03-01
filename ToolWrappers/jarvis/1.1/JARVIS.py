from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Jarvis_V0_1_0 = CommandToolBuilder(tool="JARVIS", base_command=["JARVIS"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="force mode. Overwrites old files.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode (more information).")), ToolInput(tag="in_estimation", input_type=Boolean(optional=True), prefix="--estimation", doc=InputDocumentation(doc="creates [sequence].info with complexity profile.")), ToolInput(tag="in_show_levels", input_type=Boolean(optional=True), prefix="--show-levels", doc=InputDocumentation(doc="show pre-computed compression levels (configured).")), ToolInput(tag="in_estimate", input_type=Boolean(optional=True), prefix="--estimate", doc=InputDocumentation(doc="it creates a file with the extension '.iae' with the\nrespective information content. If the file is FASTA or\nFASTQ it will only use the 'ACGT' (genomic) sequence.")), ToolInput(tag="in_compression_level_integerdefault", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[NUMBER],  --level [NUMBER]\nCompression level (integer).\nDefault level: 1.\nIt defines compressibility in balance with computational\nresources (RAM & time). Use -s for levels perception.")), ToolInput(tag="in_size_context_selection", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="[NUMBER],  --selection [NUMBER]\nSize of the context selection model (integer).\nDefault context selection: 12."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jarvis_V0_1_0().translate("wdl", allow_empty_container=True)

