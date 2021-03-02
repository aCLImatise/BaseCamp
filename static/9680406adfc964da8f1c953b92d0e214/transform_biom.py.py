from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Transform_Biom_Py_V0_1_0 = CommandToolBuilder(tool="transform_biom.py", base_command=["transform_biom.py"], inputs=[ToolInput(tag="in_biom_table_fp", input_type=File(optional=True), prefix="--biom_table_fp", doc=InputDocumentation(doc="Path to the input BIOM-format table. [REQUIRED]")), ToolInput(tag="in_transform", input_type=String(optional=True), prefix="--transform", doc=InputDocumentation(doc="The transform to apply to the data. Default: arcsine\nsquare root.")), ToolInput(tag="in_fmt", input_type=String(optional=True), prefix="--fmt", doc=InputDocumentation(doc="Set the output format of the BIOM table. Default is\nHDF5.")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress the output BIOM table with gzip. HDF5 BIOM\n(v2.x) files are internally compressed by default, so\nthis option is not needed when specifying --fmt hdf5.")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="Output path for the transformed BIOM table.[REQUIRED]"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="Output path for the transformed BIOM table.[REQUIRED]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transform_Biom_Py_V0_1_0().translate("wdl", allow_empty_container=True)

