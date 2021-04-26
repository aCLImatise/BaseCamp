from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String, Directory

Mi_Msi_Train_Test_V0_1_0 = CommandToolBuilder(tool="mi_msi_train_test", base_command=["mi_msi_train_test"], inputs=[ToolInput(tag="in_epochs", input_type=Int(optional=True), prefix="--epochs", doc=InputDocumentation(doc="Number of epochs to train (default: 40)")), ToolInput(tag="in_lr", input_type=Float(optional=True), prefix="--lr", doc=InputDocumentation(doc="Learning rate used in training (default: 0.0001)")), ToolInput(tag="in_reg", input_type=Float(optional=True), prefix="--reg", doc=InputDocumentation(doc="Weight decay used in training (default: 5e-4)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed (default: 2)")), ToolInput(tag="in_no_cuda", input_type=Boolean(optional=True), prefix="--no-cuda", doc=InputDocumentation(doc="Disables CUDA training for use off GPU, if this is not\nspecified the utility will check availability of\ntorch.cuda")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of the model,")), ToolInput(tag="in_train_location", input_type=Directory(optional=True), prefix="--train-location", doc=InputDocumentation(doc="Directory Location for Training Data")), ToolInput(tag="in_test_location", input_type=Directory(optional=True), prefix="--test-location", doc=InputDocumentation(doc="Directory Location for Testing Data")), ToolInput(tag="in_save", input_type=String(optional=True), prefix="--save", doc=InputDocumentation(doc="Save the model weights to disk after training"))], outputs=[], container="quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mi_Msi_Train_Test_V0_1_0().translate("wdl")

