from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Transpose_Biom_Py_V0_1_0 = CommandToolBuilder(tool="transpose_biom.py", base_command=["transpose_biom.py"], inputs=[ToolInput(tag="in_input_biom_fp", input_type=File(optional=True), prefix="--input_biom_fp", doc=InputDocumentation(doc="The BIOM-format file.")), ToolInput(tag="in_mapping", input_type=File(optional=True), prefix="--mapping", doc=InputDocumentation(doc="The mapping file specifying group information for each\nsample.")), ToolInput(tag="in_map_category", input_type=String(optional=True), prefix="--map_category", doc=InputDocumentation(doc="A mapping category, such as TreatmentType, that will\nbe used to split the data into separate BIOM files;\none for each value found in the category.")), ToolInput(tag="in_output_biom_fp", input_type=File(optional=True), prefix="--output_biom_fp", doc=InputDocumentation(doc="The BIOM-format file to write."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transpose_Biom_Py_V0_1_0().translate("wdl", allow_empty_container=True)

