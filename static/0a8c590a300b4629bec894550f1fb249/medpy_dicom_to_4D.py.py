from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Dicom_To_4D_Py_V0_1_0 = CommandToolBuilder(tool="medpy_dicom_to_4D.py", base_command=["medpy_dicom_to_4D.py"], inputs=[ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_split_dot", input_type=String(), position=0, doc=InputDocumentation(doc="A typical use-case are DICOM images, which often come with the temporal and third spatial")), ToolInput(tag="in_dimension_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Copyright (C) 2013 Oskar Maier")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Source directory.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Target volume.")), ToolInput(tag="in_dimension", input_type=String(), position=2, doc=InputDocumentation(doc="The dimension in which to perform the cut (starting from 0).")), ToolInput(tag="in_offset", input_type=String(), position=3, doc=InputDocumentation(doc="How many consecutive slices belong together before a shift occurs. / The offset between the volumes."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Dicom_To_4D_Py_V0_1_0().translate("wdl", allow_empty_container=True)

