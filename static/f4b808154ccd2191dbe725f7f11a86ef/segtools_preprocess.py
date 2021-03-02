from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Segtools_Preprocess_V0_1_0 = CommandToolBuilder(tool="segtools_preprocess", base_command=["segtools-preprocess"], inputs=[ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="Overwrite any existing output files.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print diagnostic messages.")), ToolInput(tag="in_annotation", input_type=Boolean(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Read INFILE as an annotation, rather than as a segmentation\n(default).\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Preprocess_V0_1_0().translate("wdl", allow_empty_container=True)

