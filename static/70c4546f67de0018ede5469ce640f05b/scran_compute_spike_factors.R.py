from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scran_Compute_Spike_Factors_R_V0_1_0 = CommandToolBuilder(tool="scran_compute_spike_factors.R", base_command=["scran-compute-spike-factors.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in rds format.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="A character vector specifying which spike-in sets to use. Default: 'ERCC'.")), ToolInput(tag="in_assay_type", input_type=String(optional=True), prefix="--assay-type", doc=InputDocumentation(doc="Specify which assay values to use. Default: 'logcounts'.")), ToolInput(tag="in_general_use", input_type=Int(optional=True), prefix="--general_use", doc=InputDocumentation(doc="A logical scalar indicating whether the size factors should be stored for general use by all genes.")), ToolInput(tag="in_output_sce_object", input_type=Int(optional=True), prefix="--output-sce-object", doc=InputDocumentation(doc="Path to the output SCE object containing the vector of size factors in sizeFactors(x)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Compute_Spike_Factors_R_V0_1_0().translate("wdl", allow_empty_container=True)

