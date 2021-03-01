from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, Array, String

Deepac_Vir_Train_V0_1_0 = CommandToolBuilder(tool="deepac_vir_train", base_command=["deepac-vir", "train"], inputs=[ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="--sensitive", doc=InputDocumentation(doc="Use the sensitive model.")), ToolInput(tag="in_rapid", input_type=Boolean(optional=True), prefix="--rapid", doc=InputDocumentation(doc="Use the rapid CNN model.")), ToolInput(tag="in_custom", input_type=File(optional=True), prefix="--custom", doc=InputDocumentation(doc="Use the user-supplied configuration file.")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores. Default: all.")), ToolInput(tag="in_gpus", input_type=Array(t=String(), optional=True), prefix="--gpus", doc=InputDocumentation(doc="GPU devices to use (comma-separated). Default: all")), ToolInput(tag="in_train_data", input_type=File(optional=True), prefix="--train-data", doc=InputDocumentation(doc="Path to training data.")), ToolInput(tag="in_train_labels", input_type=File(optional=True), prefix="--train-labels", doc=InputDocumentation(doc="Path to training labels.")), ToolInput(tag="in_val_data", input_type=File(optional=True), prefix="--val-data", doc=InputDocumentation(doc="Path to validation data.")), ToolInput(tag="in_val_labels", input_type=File(optional=True), prefix="--val-labels", doc=InputDocumentation(doc="Path to validation labels.")), ToolInput(tag="in_run_name", input_type=String(optional=True), prefix="--run-name", doc=InputDocumentation(doc="Run name (default: based on chosen config).\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_train", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Train_V0_1_0().translate("wdl")

