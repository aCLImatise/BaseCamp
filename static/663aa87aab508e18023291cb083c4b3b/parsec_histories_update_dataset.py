from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Histories_Update_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_histories_update_dataset", base_command=["parsec", "histories", "update_dataset"], inputs=[ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Replace history dataset annotation with given string")), ToolInput(tag="in_datatype", input_type=String(optional=True), prefix="--datatype", doc=InputDocumentation(doc="Replace the datatype of the history dataset with the\ngiven string. The string must be a valid Galaxy\ndatatype, both the current and the target datatypes\nmust allow datatype changes, and the dataset must not\nbe in use as input or output of a running job\n(including uploads), otherwise an error will be raised.")), ToolInput(tag="in_deleted", input_type=Boolean(optional=True), prefix="--deleted", doc=InputDocumentation(doc="Mark or unmark history dataset as deleted")), ToolInput(tag="in_genome_build", input_type=String(optional=True), prefix="--genome_build", doc=InputDocumentation(doc="Replace history dataset genome build (dbkey)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Replace history dataset name with the given string")), ToolInput(tag="in_visible", input_type=Boolean(optional=True), prefix="--visible", doc=InputDocumentation(doc="Mark or unmark history dataset as visible")), ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dataset_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Update_Dataset_V0_1_0().translate("wdl")

