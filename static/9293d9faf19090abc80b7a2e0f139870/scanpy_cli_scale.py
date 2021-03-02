from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, Float, String

Scanpy_Cli_Scale_V0_1_0 = CommandToolBuilder(tool="scanpy_cli_scale", base_command=["scanpy-cli", "scale"], inputs=[ToolInput(tag="in_input_format", input_type=Boolean(optional=True), prefix="--input-format", doc=InputDocumentation(doc="[anndata|loom]\nInput object format.  [default: anndata]")), ToolInput(tag="in_output_format", input_type=Boolean(optional=True), prefix="--output-format", doc=InputDocumentation(doc="[anndata|loom|zarr]\nOutput object format.  [default: anndata]")), ToolInput(tag="in_zarr_chunk_size", input_type=Int(optional=True), prefix="--zarr-chunk-size", doc=InputDocumentation(doc="Chunk size for writing output in zarr")), ToolInput(tag="in_export_mtx", input_type=File(optional=True), prefix="--export-mtx", doc=InputDocumentation(doc="When specified, using it as prefix for\nexporting mtx files. If not empty and not\nending with '/' or '_', a '_' will be\nappended.")), ToolInput(tag="in_show_obj", input_type=Boolean(optional=True), prefix="--show-obj", doc=InputDocumentation(doc="[stdout|stderr]      Print output object summary info to\nspecified stream.")), ToolInput(tag="in_no_zero_center", input_type=Boolean(optional=True), prefix="--no-zero-center", doc=InputDocumentation(doc="When set, omit zero-centering variables to\nallow efficient handling of sparse input.")), ToolInput(tag="in_max_value", input_type=Float(optional=True), prefix="--max-value", doc=InputDocumentation(doc="When specified, clip to this value after\nscaling, otherwise do not clip")), ToolInput(tag="in_input_obj", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_obj", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scanpy_Cli_Scale_V0_1_0().translate("wdl", allow_empty_container=True)

