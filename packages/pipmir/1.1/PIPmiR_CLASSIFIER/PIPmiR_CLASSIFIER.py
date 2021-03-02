from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Pipmir_Classifier_V0_1_0 = CommandToolBuilder(tool="PIPmiR_CLASSIFIER", base_command=["PIPmiR", "CLASSIFIER"], inputs=[ToolInput(tag="in_file_their_structure", input_type=File(optional=True), prefix="-P", doc=InputDocumentation(doc="File of putative miRNA precursor sequences and their fold structure (see README)")), ToolInput(tag="in_sorted_bam_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc=".bam Sorted .bam file containing alignment of the read data")), ToolInput(tag="in_basename_output_files", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="basename of output files")), ToolInput(tag="in_minimum_read_count", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum read count for a mature to be considered expressed (Default: 10)")), ToolInput(tag="in_maximum_amount_memory", input_type=Int(optional=True), prefix="-X", doc=InputDocumentation(doc="Maximum amount of memory PIPmiR can use (Default: 4G)")), ToolInput(tag="in_file_containing_trainingdatadat", input_type=File(optional=True), prefix="-T", doc=InputDocumentation(doc="File containing classifier training data (Default: TrainingData.dat)")), ToolInput(tag="in_creates_log_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Creates a log file of PIPmiR results at <output_header>_log.csv"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipmir_Classifier_V0_1_0().translate("wdl", allow_empty_container=True)

