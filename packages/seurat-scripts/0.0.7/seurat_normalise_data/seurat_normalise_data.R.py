from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Seurat_Normalise_Data_R_V0_1_0 = CommandToolBuilder(tool="seurat_normalise_data.R", base_command=["seurat-normalise-data.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a serialized R matrix object may be found.")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Either loom, seurat, anndata or singlecellexperiment for the input format to read.")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="Either loom, seurat, anndata or singlecellexperiment for the output format.")), ToolInput(tag="in_normalization_method", input_type=String(optional=True), prefix="--normalization-method", doc=InputDocumentation(doc="Method for normalization. Default is log-normalization (LogNormalize). Can be 'CLR' or 'RC' additionally.")), ToolInput(tag="in_scale_factor", input_type=String(optional=True), prefix="--scale-factor", doc=InputDocumentation(doc="Sets the scale factor for cell-level normalization.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'Seurat'.'")), ToolInput(tag="in_margin", input_type=Int(optional=True), prefix="--margin", doc=InputDocumentation(doc="If performing CLR normalization, normalize across features (1) or cells (2).")), ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="--block-size", doc=InputDocumentation(doc="How many cells should be run in each chunk, will try to split evenly across threads"))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'Seurat'.'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seurat_Normalise_Data_R_V0_1_0().translate("wdl", allow_empty_container=True)

