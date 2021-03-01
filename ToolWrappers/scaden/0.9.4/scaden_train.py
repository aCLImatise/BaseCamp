from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float

Scaden_Train_V0_1_0 = CommandToolBuilder(tool="scaden_train", base_command=["scaden", "train"], inputs=[ToolInput(tag="in_train_datasets", input_type=String(optional=True), prefix="--train_datasets", doc=InputDocumentation(doc="Datasets used for training. Uses all by default.")), ToolInput(tag="in_model_dir", input_type=File(optional=True), prefix="--model_dir", doc=InputDocumentation(doc="Path to store the model in")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch_size", doc=InputDocumentation(doc="Batch size to use for training. Default: 128")), ToolInput(tag="in_learning_rate", input_type=Float(optional=True), prefix="--learning_rate", doc=InputDocumentation(doc="Learning rate used for training. Default: 0.0001")), ToolInput(tag="in_steps", input_type=Int(optional=True), prefix="--steps", doc=InputDocumentation(doc="Number of training steps")), ToolInput(tag="in_training_data", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaden_Train_V0_1_0().translate("wdl", allow_empty_container=True)

