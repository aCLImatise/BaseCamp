from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scater_Calculate_Cpm_R_V0_1_0 = CommandToolBuilder(tool="scater_calculate_cpm.R", base_command=["scater-calculate-cpm.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name containing serialized SingleCellExperiment object or count matrix.")), ToolInput(tag="in_exprs_values", input_type=String(optional=True), prefix="--exprs-values", doc=InputDocumentation(doc="A string specifying the assay of ‘object’ containing the count matrix, if ‘object’ is a SingleCellExperiment.")), ToolInput(tag="in_size_factors", input_type=Int(optional=True), prefix="--size-factors", doc=InputDocumentation(doc="A logical scalar indicating whether size factors in object should be used to compute effective library sizes. If not, all size factors are deleted and librarysize-based factors are used instead (seelibrarySizeFactors). Alternatively, a numeric vector containing a size factor for each cell, which is used in place ofsizeFactor(object).")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'Scater'.'")), ToolInput(tag="in_output_text_file", input_type=File(optional=True), prefix="--output-text-file", doc=InputDocumentation(doc="File name in which to store CPM values."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'Scater'.'")), ToolOutput(tag="out_output_text_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_text_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store CPM values."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scater_Calculate_Cpm_R_V0_1_0().translate("wdl", allow_empty_container=True)

