from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Sc3_Sc3_Kmeans_R_V0_1_0 = CommandToolBuilder(tool="sc3_sc3_kmeans.R", base_command=["sc3-sc3-kmeans.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a transformed SC3 'SingleCellExperiment' object has been stored after processed with sc3_calc_transfs()")), ToolInput(tag="in_ks", input_type=Int(optional=True), prefix="--ks", doc=InputDocumentation(doc="A comma-separated string or single value representing the number of clusters k to be used for SC3 clustering.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name for R object of type 'SingleCellExperiment' from SC3 in which to store the kmeans clustering as metadata."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name for R object of type 'SingleCellExperiment' from SC3 in which to store the kmeans clustering as metadata."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sc3_Sc3_Kmeans_R_V0_1_0().translate("wdl", allow_empty_container=True)

