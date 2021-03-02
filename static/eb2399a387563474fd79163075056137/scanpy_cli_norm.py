from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, Float, String

Scanpy_Cli_Norm_V0_1_0 = CommandToolBuilder(tool="scanpy_cli_norm", base_command=["scanpy-cli", "norm"], inputs=[ToolInput(tag="in_input_format", input_type=Boolean(optional=True), prefix="--input-format", doc=InputDocumentation(doc="[anndata|loom]\nInput object format.  [default: anndata]")), ToolInput(tag="in_output_format", input_type=Boolean(optional=True), prefix="--output-format", doc=InputDocumentation(doc="[anndata|loom|zarr]\nOutput object format.  [default: anndata]")), ToolInput(tag="in_zarr_chunk_size", input_type=Int(optional=True), prefix="--zarr-chunk-size", doc=InputDocumentation(doc="Chunk size for writing output in zarr")), ToolInput(tag="in_export_mtx", input_type=File(optional=True), prefix="--export-mtx", doc=InputDocumentation(doc="When specified, using it as prefix for\nexporting mtx files. If not empty and not\nending with '/' or '_', a '_' will be\nappended.")), ToolInput(tag="in_show_obj", input_type=Boolean(optional=True), prefix="--show-obj", doc=InputDocumentation(doc="[stdout|stderr]      Print output object summary info to\nspecified stream.")), ToolInput(tag="in_save_raw", input_type=Boolean(optional=True), prefix="--save-raw", doc=InputDocumentation(doc="[yes|no|counts]  Save raw data existing raw data.  [default:\nyes]")), ToolInput(tag="in_no_log_transform", input_type=Boolean(optional=True), prefix="--no-log-transform", doc=InputDocumentation(doc="When set, do not apply (natural) log\ntransform following normalisation.\n[default: True]")), ToolInput(tag="in_normalize_to", input_type=Float(optional=True), prefix="--normalize-to", doc=InputDocumentation(doc="Normalize per cell nUMI to this number.\n[default: 10000]")), ToolInput(tag="in_fraction", input_type=Float(optional=True), prefix="--fraction", doc=InputDocumentation(doc="Only use genes that make up less than this\nfraction of the total count in every cell.\nSo only these genes will sum up to the\nnumber specified by --normalize-to.\n[default: 0.9]")), ToolInput(tag="in_input_obj", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_obj", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scanpy_Cli_Norm_V0_1_0().translate("wdl", allow_empty_container=True)

