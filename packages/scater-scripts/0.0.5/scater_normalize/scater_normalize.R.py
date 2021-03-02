from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scater_Normalize_R_V0_1_0 = CommandToolBuilder(tool="scater_normalize.R", base_command=["scater-normalize.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a serialized R SingleCellExperiment object where object matrix found")), ToolInput(tag="in_exprs_values", input_type=String(optional=True), prefix="--exprs-values", doc=InputDocumentation(doc="String indicating which assay contains the count data that should be used to compute log-transformed expression values.")), ToolInput(tag="in_return_log", input_type=Int(optional=True), prefix="--return-log", doc=InputDocumentation(doc="Logical scalar, should normalized values be returned on the log2 scale?")), ToolInput(tag="in_log_exprs_offset", input_type=Int(optional=True), prefix="--log-exprs-offset", doc=InputDocumentation(doc="Numeric scalar specifying the offset to add when log-transforming expression values. If ‘NULL’, value is taken from ‘metadata(object)$log.exprs.offset’ if defined, otherwise 1.")), ToolInput(tag="in_centre_size_factors", input_type=Int(optional=True), prefix="--centre-size-factors", doc=InputDocumentation(doc="Logical scalar indicating whether size fators should be centred.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'.'"))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'.'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scater_Normalize_R_V0_1_0().translate("wdl", allow_empty_container=True)

