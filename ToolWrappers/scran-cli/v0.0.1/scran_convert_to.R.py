from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scran_Convert_To_R_V0_1_0 = CommandToolBuilder(tool="scran_convert_to.R", base_command=["scran-convert-to.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in rds format.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="A string specifying the analysis for which the object should be prepared. Any of: 'edgeR', 'DESeq2', 'monocle'.")), ToolInput(tag="in_assay_type", input_type=String(optional=True), prefix="--assay-type", doc=InputDocumentation(doc="A string specifying which assay of x should be put in the returned object. For edgeR and DESeq2, assay is set to 'counts' such that count data is stored in the output object")), ToolInput(tag="in_get_spikes", input_type=String(optional=True), prefix="--get-spikes", doc=InputDocumentation(doc="Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).")), ToolInput(tag="in_output_converted", input_type=File(optional=True), prefix="--output-converted", doc=InputDocumentation(doc="Path to the converted object stored as RDS."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Convert_To_R_V0_1_0().translate("wdl", allow_empty_container=True)

