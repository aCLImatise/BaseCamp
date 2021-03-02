from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Heatmap_Py_V0_1_0 = CommandToolBuilder(tool="heatmap.py", base_command=["heatmap.py"], inputs=[ToolInput(tag="in_secondary_model_tar", input_type=String(optional=True), prefix="--secondary_model_tar", doc=InputDocumentation(doc="secondary model tar if combining the prediction of two\ndifferent phenotype collections into one heatmap")), ToolInput(tag="in_row_method", input_type=String(optional=True), prefix="--row_method", doc=InputDocumentation(doc="method to use for the row dendrogram")), ToolInput(tag="in_column_method", input_type=String(optional=True), prefix="--column_method", doc=InputDocumentation(doc="method to use for the column dendrogram")), ToolInput(tag="in_row_metric", input_type=String(optional=True), prefix="--row_metric", doc=InputDocumentation(doc="metric to use for the row dendrogram")), ToolInput(tag="in_column_metric", input_type=String(optional=True), prefix="--column_metric", doc=InputDocumentation(doc="metric to use for the column dendrogram")), ToolInput(tag="in_sample_f", input_type=String(optional=True), prefix="--sample_f", doc=InputDocumentation(doc="restrict phenotype predictions to the sample found in\n<sample_file>\n")), ToolInput(tag="in_data_f", input_type=String(), position=0, doc=InputDocumentation(doc="tab delimited file with row and column names")), ToolInput(tag="in_out_f", input_type=String(), position=1, doc=InputDocumentation(doc="output image (png) file name")), ToolInput(tag="in_model_tar", input_type=String(), position=2, doc=InputDocumentation(doc="phenotype model archive")), ToolInput(tag="in_color_f", input_type=String(), position=3, doc=InputDocumentation(doc="file with r g b colors to be used"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Heatmap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

