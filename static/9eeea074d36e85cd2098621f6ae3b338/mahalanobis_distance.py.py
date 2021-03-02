from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float

Mahalanobis_Distance_Py_V0_1_0 = CommandToolBuilder(tool="mahalanobis_distance.py", base_command=["mahalanobis_distance.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Dataset in Wide format")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with uniqueID.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Treatment group")), ToolInput(tag="in_order", input_type=String(optional=True), prefix="--order", doc=InputDocumentation(doc="Run Order")), ToolInput(tag="in_levels", input_type=String(optional=True), prefix="--levels", doc=InputDocumentation(doc="Additional notes.")), ToolInput(tag="in_figure", input_type=String(optional=True), prefix="--figure", doc=InputDocumentation(doc="PDF Output of standardizedEuclidean distance plot")), ToolInput(tag="in_distance_to_mean", input_type=String(optional=True), prefix="--distanceToMean", doc=InputDocumentation(doc="TSV Output of Mahalanobis distances from samples to\nthe mean.")), ToolInput(tag="in_distance_pairwise", input_type=String(optional=True), prefix="--distancePairwise", doc=InputDocumentation(doc="TSV Output of sample-pairwisemahalanobis distances.")), ToolInput(tag="in_per", input_type=Float(optional=True), prefix="--per", doc=InputDocumentation(doc="The thresholdfor standard distributions. The default\nis 0.95.")), ToolInput(tag="in_penalty", input_type=String(optional=True), prefix="--penalty", doc=InputDocumentation(doc="Value of lambda for the penalty.")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mahalanobis_Distance_Py_V0_1_0().translate("wdl", allow_empty_container=True)

