from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Vibrant_Annotation_Py_V0_1_0 = CommandToolBuilder(tool="VIBRANT_annotation.py", base_command=["VIBRANT_annotation.py"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input fasta file")), ToolInput(tag="in_format_of_input", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="format of input [default='nucl']")), ToolInput(tag="in_length_limit_sequences", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="length in basepairs to limit input sequences [default=1000,\ncan increase but not decrease]")), ToolInput(tag="in_number_limit_sequences", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="number of ORFs per scaffold to limit input sequences\n[default=4, can increase but not decrease]")), ToolInput(tag="in_vi_rome", input_type=Boolean(optional=True), prefix="-virome", doc=InputDocumentation(doc="use this setting if dataset is known to be comprised mainly\nof viruses. More sensitive to viruses, less sensitive to\nfalse identifications [default=off]")), ToolInput(tag="in_path_directory_hmm", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="path to 'databases' directory that contains .HMM files (if\nmoved from default location)")), ToolInput(tag="in_path_tsv_moved", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="path to 'files' directory that contains .tsv and model files\n(if moved from default location)")), ToolInput(tag="in_outfolder", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="out_folder")), ToolInput(tag="in_base", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="base"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vibrant_Annotation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

