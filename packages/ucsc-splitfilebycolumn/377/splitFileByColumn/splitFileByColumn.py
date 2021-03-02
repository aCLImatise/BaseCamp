from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Splitfilebycolumn_V0_1_0 = CommandToolBuilder(tool="splitFileByColumn", base_command=["splitFileByColumn"], inputs=[ToolInput(tag="in_col", input_type=Int(optional=True), prefix="-col", doc=InputDocumentation(doc="- Use the Nth column value (default: N=1, first column)")), ToolInput(tag="in_head", input_type=File(optional=True), prefix="-head", doc=InputDocumentation(doc="- Put head in front of each output")), ToolInput(tag="in_tail", input_type=File(optional=True), prefix="-tail", doc=InputDocumentation(doc="- Put tail at end of each output")), ToolInput(tag="in_chrom_dirs", input_type=Boolean(optional=True), prefix="-chromDirs", doc=InputDocumentation(doc="- Split into subdirs of outDir that are distilled from chrom\nnames, e.g. chr3_random -> outDir/3/chr3_random.XXX .")), ToolInput(tag="in_ending", input_type=String(optional=True), prefix="-ending", doc=InputDocumentation(doc="- Use XXX as the dot-suffix of split files (default: taken\nfrom source).")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="-tab", doc=InputDocumentation(doc="- Split by tab characters instead of whitespace.")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitfilebycolumn_V0_1_0().translate("wdl", allow_empty_container=True)

