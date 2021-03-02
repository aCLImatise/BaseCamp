from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Rgt_Hint_Training_V0_1_0 = CommandToolBuilder(tool="rgt_hint_training", base_command=["rgt-hint", "training"], inputs=[ToolInput(tag="in_reads_file", input_type=File(optional=True), prefix="--reads-file", doc=InputDocumentation(doc="The BAM file containing the DNase-seq or ATAC-seq")), ToolInput(tag="in_annotate_file", input_type=Int(optional=True), prefix="--annotate-file", doc=InputDocumentation(doc="A annotate file containing all the states.")), ToolInput(tag="in_bias_table", input_type=File(optional=True), prefix="--bias-table", doc=InputDocumentation(doc=",FILE1_R")), ToolInput(tag="in_semi_supervised", input_type=Boolean(optional=True), prefix="--semi-supervised", doc=InputDocumentation(doc="If used, HMM model will be trained using semi-\nsupervised learning.")), ToolInput(tag="in_signal_file", input_type=File(optional=True), prefix="--signal-file", doc=InputDocumentation(doc="The txt file containing the DNase-seq or ATAC-seq\nsignals used to train HMM model.")), ToolInput(tag="in_num_states", input_type=Int(optional=True), prefix="--num-states", doc=InputDocumentation(doc="The states number of HMM model.")), ToolInput(tag="in_output_location", input_type=File(optional=True), prefix="--output-location", doc=InputDocumentation(doc="Path where the output bias table files will be\nwritten.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="The prefix for results files.\n")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="--chrom STRING        The name of chromosome used to train HMM"))], outputs=[ToolOutput(tag="out_output_location", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_location", type_hint=File()), doc=OutputDocumentation(doc="Path where the output bias table files will be\nwritten."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Hint_Training_V0_1_0().translate("wdl", allow_empty_container=True)

