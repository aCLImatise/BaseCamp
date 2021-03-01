from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Run_Music_Csh_V0_1_0 = CommandToolBuilder(tool="run_MUSIC.csh", base_command=["run_MUSIC.csh"], inputs=[ToolInput(tag="in_preprocess", input_type=File(optional=True), prefix="-preprocess", doc=InputDocumentation(doc="[Reads file path] [Output dir]")), ToolInput(tag="in_remove_duplicates", input_type=Boolean(optional=True), prefix="-remove_duplicates", doc=InputDocumentation(doc="[Preprocessed reads dir] [Sorted reads dir] [Pruned reads dir]")), ToolInput(tag="in_get", input_type=Boolean(optional=True), prefix="-get_", doc=InputDocumentation(doc="[relaxed/optimal]_[punctate/broad]_ERs [chip preprocessed dir] [input preprocessed dir] [Multi-mappability profile directory]")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_preprocess", output_type=File(optional=True), selector=InputSelector(input_to_select="in_preprocess", type_hint=File()), doc=OutputDocumentation(doc="[Reads file path] [Output dir]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Music_Csh_V0_1_0().translate("wdl", allow_empty_container=True)

