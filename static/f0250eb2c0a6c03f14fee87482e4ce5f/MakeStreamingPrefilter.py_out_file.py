from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Makestreamingprefilter_Py_Out_File_V0_1_0 = CommandToolBuilder(tool="MakeStreamingPrefilter.py_out_file", base_command=["MakeStreamingPrefilter.py", "out_file"], inputs=[ToolInput(tag="in_make_streaming_prefilter_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_range", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makestreamingprefilter_Py_Out_File_V0_1_0().translate("wdl", allow_empty_container=True)

