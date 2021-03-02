from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Papaa_Targene_Pathway_Count_Heatmaps_Py_V0_1_0 = CommandToolBuilder(tool="papaa_targene_pathway_count_heatmaps.py", base_command=["papaa_targene_pathway_count_heatmaps.py"], inputs=[ToolInput(tag="in_genes", input_type=File(optional=True), prefix="--genes", doc=InputDocumentation(doc="string of the genes to extract or gene list file")), ToolInput(tag="in_path_genes", input_type=File(optional=True), prefix="--path_genes", doc=InputDocumentation(doc="pathway gene list file")), ToolInput(tag="in_classifier_decisions", input_type=File(optional=True), prefix="--classifier_decisions", doc=InputDocumentation(doc="string of the location of classifier decisions file\nwith predictions/scores")), ToolInput(tag="in_x_matrix", input_type=File(optional=True), prefix="--x_matrix", doc=InputDocumentation(doc="Filename of features to use in model")), ToolInput(tag="in_filename_mut", input_type=File(optional=True), prefix="--filename_mut", doc=InputDocumentation(doc="Filename of sample/gene mutations to use in model")), ToolInput(tag="in_filename_mut_burden", input_type=File(optional=True), prefix="--filename_mut_burden", doc=InputDocumentation(doc="Filename of sample mutation burden to use in model")), ToolInput(tag="in_filename_sample", input_type=File(optional=True), prefix="--filename_sample", doc=InputDocumentation(doc="Filename of patient/samples to use in model")), ToolInput(tag="in_filename_copy_loss", input_type=File(optional=True), prefix="--filename_copy_loss", doc=InputDocumentation(doc="Filename of copy number loss")), ToolInput(tag="in_filename_copy_gain", input_type=File(optional=True), prefix="--filename_copy_gain", doc=InputDocumentation(doc="Filename of copy number gain")), ToolInput(tag="in_filename_cancer_gene_classification", input_type=File(optional=True), prefix="--filename_cancer_gene_classification", doc=InputDocumentation(doc="Filename of cancer gene classification table\n"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Targene_Pathway_Count_Heatmaps_Py_V0_1_0().translate("wdl")

