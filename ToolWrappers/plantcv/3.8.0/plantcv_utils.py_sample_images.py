from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int

Plantcv_Utils_Py_Sample_Images_V0_1_0 = CommandToolBuilder(tool="plantcv_utils.py_sample_images", base_command=["plantcv-utils.py", "sample_images"], inputs=[ToolInput(tag="in_source", input_type=Directory(optional=True), prefix="--source", doc=InputDocumentation(doc="Source directory of images")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory for the random sample to get saved")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="The number of images to sample\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for the random sample to get saved"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plantcv_Utils_Py_Sample_Images_V0_1_0().translate("wdl", allow_empty_container=True)

