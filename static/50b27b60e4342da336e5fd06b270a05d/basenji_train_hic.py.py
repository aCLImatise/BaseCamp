from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Basenji_Train_Hic_Py_V0_1_0 = CommandToolBuilder(tool="basenji_train_hic.py", base_command=["basenji_train_hic.py"], inputs=[ToolInput(tag="in_augment_shifts", input_type=Boolean(optional=True), prefix="--augment_shifts", doc=InputDocumentation(doc=": Augment training with shifted sequences.\n(default: '0')")), ToolInput(tag="in_eval_data", input_type=Boolean(optional=True), prefix="--eval_data", doc=InputDocumentation(doc=": test tfrecord file\n(default: '')")), ToolInput(tag="in_metrics_sample", input_type=Boolean(optional=True), prefix="--metrics_sample", doc=InputDocumentation(doc=": Sample sequence positions for computing metrics.\n(default: '1.0')\n(a number)")), ToolInput(tag="in_params", input_type=Boolean(optional=True), prefix="--params", doc=InputDocumentation(doc=": Parameter JSON\n(default: '')")), ToolInput(tag="in_restore", input_type=Boolean(optional=True), prefix="--restore", doc=InputDocumentation(doc=": Restore model and continue training.")), ToolInput(tag="in_train_data", input_type=Boolean(optional=True), prefix="--train_data", doc=InputDocumentation(doc=": train tfrecord file\n(default: '')"))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Train_Hic_Py_V0_1_0().translate("wdl")

