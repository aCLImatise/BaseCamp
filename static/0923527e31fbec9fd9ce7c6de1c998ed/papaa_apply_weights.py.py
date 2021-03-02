from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Papaa_Apply_Weights_Py_V0_1_0 = CommandToolBuilder(tool="papaa_apply_weights.py", base_command=["papaa_apply_weights.py"], inputs=[ToolInput(tag="in_classifier_summary", input_type=File(optional=True), prefix="--classifier_summary", doc=InputDocumentation(doc="folder location of classifier summary file")), ToolInput(tag="in_copy_number", input_type=Boolean(optional=True), prefix="--copy_number", doc=InputDocumentation(doc="Supplement Y matrix with copy number events")), ToolInput(tag="in_x_matrix", input_type=File(optional=True), prefix="--x_matrix", doc=InputDocumentation(doc="Filename of features to use in model")), ToolInput(tag="in_filename_mut", input_type=File(optional=True), prefix="--filename_mut", doc=InputDocumentation(doc="Filename of sample/gene mutations to use in model")), ToolInput(tag="in_filename_mut_burden", input_type=File(optional=True), prefix="--filename_mut_burden", doc=InputDocumentation(doc="Filename of sample mutation burden to use in model")), ToolInput(tag="in_filename_sample", input_type=File(optional=True), prefix="--filename_sample", doc=InputDocumentation(doc="Filename of patient/samples to use in model")), ToolInput(tag="in_filename_copy_loss", input_type=File(optional=True), prefix="--filename_copy_loss", doc=InputDocumentation(doc="Filename of copy number loss")), ToolInput(tag="in_filename_copy_gain", input_type=File(optional=True), prefix="--filename_copy_gain", doc=InputDocumentation(doc="Filename of copy number gain")), ToolInput(tag="in_filename_cancer_gene_classification", input_type=File(optional=True), prefix="--filename_cancer_gene_classification", doc=InputDocumentation(doc="Filename of cancer gene classification table\n"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Apply_Weights_Py_V0_1_0().translate("wdl")

