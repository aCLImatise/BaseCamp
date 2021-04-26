from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Rnasamba_Train_V0_1_0 = CommandToolBuilder(tool="rnasamba_train", base_command=["rnasamba", "train"], inputs=[ToolInput(tag="in_early_stopping", input_type=Int(optional=True), prefix="--early_stopping", doc=InputDocumentation(doc="number of epochs after lowest validation loss before\nstopping training (a fraction of 0.1 of the training\nset is set apart for validation and the model with the\nlowest validation loss will be saved). (default: 0)")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch_size", doc=InputDocumentation(doc="number of samples per gradient update. (default: 128)")), ToolInput(tag="in_epochs", input_type=Int(optional=True), prefix="--epochs", doc=InputDocumentation(doc="number of epochs to train the model. (default: 40)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print the progress of the training. 0 = silent, 1 =\ncurrent step, 2 = progress bar, 3 = one line per\nepoch. (default: 0)\n")), ToolInput(tag="in_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="output HDF5 file containing weights of the newly\ntrained RNAsamba network.")), ToolInput(tag="in_coding_file", input_type=String(), position=1, doc=InputDocumentation(doc="input FASTA file containing sequences of protein-\ncoding transcripts.")), ToolInput(tag="in_noncoding_file", input_type=String(), position=2, doc=InputDocumentation(doc="input FASTA file containing sequences of noncoding")), ToolInput(tag="in_transcripts_dot", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/rnasamba:0.2.5--py36hc5360cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnasamba_Train_V0_1_0().translate("wdl")

