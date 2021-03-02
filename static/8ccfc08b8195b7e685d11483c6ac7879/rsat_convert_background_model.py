from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Convert_Background_Model_V0_1_0 = CommandToolBuilder(tool="rsat_convert_background_model", base_command=["rsat", "convert-background-model"], inputs=[ToolInput(tag="in_convert_background_model", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_mmeme_inputoutputm", input_type=String(), position=0, doc=InputDocumentation(doc="[1mMEME (input/output)[0m")), ToolInput(tag="in_models_dot", input_type=String(), position=0, doc=InputDocumentation(doc="MEME background files can be generated with the program")), ToolInput(tag="in_mpatser_outputm", input_type=String(), position=0, doc=InputDocumentation(doc="[1mpatser (output)[0m")), ToolInput(tag="in_formats_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Alternatively, the background model can be specified by combining")), ToolInput(tag="in_words_dot", input_type=String(), position=0, doc=InputDocumentation(doc="See [33moligo-analysis[0m for more details on this option"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Convert_Background_Model_V0_1_0().translate("wdl", allow_empty_container=True)

