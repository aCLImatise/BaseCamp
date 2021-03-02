from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Picopore_Rename_V0_1_0 = CommandToolBuilder(tool="picopore_rename", base_command=["picopore-rename"], inputs=[ToolInput(tag="in_pattern", input_type=String(optional=True), prefix="--pattern", doc=InputDocumentation(doc="String or regex to replace")), ToolInput(tag="in_replacement", input_type=String(optional=True), prefix="--replacement", doc=InputDocumentation(doc="String or regex replacement for PATTERN")), ToolInput(tag="in_skip_confirm_step", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="skip confirm step")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (Default: 1)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="add prefix to output files to prevent overwrite")), ToolInput(tag="in_no_skip_root", input_type=Boolean(optional=True), prefix="--no-skip-root", doc=InputDocumentation(doc="ignore files in root input directories for albacore\nrealtime compression (Default: --no-skip-root)")), ToolInput(tag="in_print_every", input_type=Int(optional=True), prefix="--print-every", doc=InputDocumentation(doc="print a dot every approximately INT files, or -1 to\nsilence (Default: 100)\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="list of directories or fast5 files to shrink"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Picopore_Rename_V0_1_0().translate("wdl", allow_empty_container=True)

