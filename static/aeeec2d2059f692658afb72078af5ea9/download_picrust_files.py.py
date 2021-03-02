from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Download_Picrust_Files_Py_V0_1_0 = CommandToolBuilder(tool="download_picrust_files.py", base_command=["download_picrust_files.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_type_of_prediction", input_type=String(optional=True), prefix="--type_of_prediction", doc=InputDocumentation(doc="Type of functional predictions. Valid choices are: ko,\ncog, rfam [default: ko]")), ToolInput(tag="in_gg_version", input_type=Int(optional=True), prefix="--gg_version", doc=InputDocumentation(doc="Version of GreenGenes that was used for OTU picking.\nValid choices are: 13_5, 18may2012 [default: 13_5]")), ToolInput(tag="in_with_confidence", input_type=Boolean(optional=True), prefix="--with_confidence", doc=InputDocumentation(doc="Download confidence interval files (only available for\nGreenGenes 13_5) [default: False]")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force download of files (i.e. overwrite existing)\n[default: False]\n")), ToolInput(tag="in_download_pic_rust_files_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Picrust_Files_Py_V0_1_0().translate("wdl", allow_empty_container=True)

