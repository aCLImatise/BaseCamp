from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float, Int

Modulated_Modularity_Clustering_Py_V0_1_0 = CommandToolBuilder(tool="modulated_modularity_clustering.py", base_command=["modulated_modularity_clustering.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Nam of the column with unique identifiers.")), ToolInput(tag="in_correlation", input_type=String(optional=True), prefix="--correlation", doc=InputDocumentation(doc="Compute correlation coefficients using either\n'pearson' (standard correlation coefficient),\n'kendall' (Kendall Tau correlation coefficient), or\n'spearman' (Spearman rank correlation).")), ToolInput(tag="in_sigma_low", input_type=Float(optional=True), prefix="--sigmaLow", doc=InputDocumentation(doc="Low value of sigma (Default: 0.05).")), ToolInput(tag="in_sigma_high", input_type=Float(optional=True), prefix="--sigmaHigh", doc=InputDocumentation(doc="High value of sigma (Default: 0.50).")), ToolInput(tag="in_sigma_num", input_type=Int(optional=True), prefix="--sigmaNum", doc=InputDocumentation(doc="Number of values of sigma to search (Default: 451).")), ToolInput(tag="in_figure", input_type=String(optional=True), prefix="--figure", doc=InputDocumentation(doc="MMC Heatmaps")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Output TSV name")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Modulated_Modularity_Clustering_Py_V0_1_0().translate("wdl", allow_empty_container=True)

