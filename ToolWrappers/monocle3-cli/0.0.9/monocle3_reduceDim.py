from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Monocle3_Reducedim_V0_1_0 = CommandToolBuilder(tool="monocle3_reduceDim", base_command=["monocle3", "reduceDim"], inputs=[ToolInput(tag="in_input_object_format", input_type=Int(optional=True), prefix="--input-object-format", doc=InputDocumentation(doc="Format of input object. [Default: cds3]")), ToolInput(tag="in_output_object_format", input_type=Int(optional=True), prefix="--output-object-format", doc=InputDocumentation(doc="Format of output object. [Default: cds3]")), ToolInput(tag="in_introspective", input_type=Boolean(optional=True), prefix="--introspective", doc=InputDocumentation(doc="Print introspective information of the output object.")), ToolInput(tag="in_max_components", input_type=Int(optional=True), prefix="--max-components", doc=InputDocumentation(doc="The dimensionality of the reduced space. [Default 2]")), ToolInput(tag="in_reduction_method", input_type=String(optional=True), prefix="--reduction-method", doc=InputDocumentation(doc="The algorithm to use for dimensionality reduction, choose from {UMAP, tSNE, PCA, LSI}. [Default: UMAP]")), ToolInput(tag="in_preprocess_method", input_type=String(optional=True), prefix="--preprocess-method", doc=InputDocumentation(doc="The preprocessing method used on the data, choose from {PCA, LSI}. [Default: PCA]")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores to be used for dimensionality reduction. [Default: 1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Emit verbose output.")), ToolInput(tag="in_input_object", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_object", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Monocle3_Reducedim_V0_1_0().translate("wdl", allow_empty_container=True)

