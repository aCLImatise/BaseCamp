from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cryfa_V0_1_0 = CommandToolBuilder(tool="cryfa", base_command=["cryfa"], inputs=[ToolInput(tag="in_key_file_name", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[KEY_FILE],  --key [KEY_FILE]\nkey file name -- MANDATORY\nThe KEY_FILE would contain a password.\nTo make a strong password, the 'keygen' program can be\nemployed via the command './keygen'.")), ToolInput(tag="in_dec", input_type=Boolean(optional=True), prefix="--dec", doc=InputDocumentation(doc="decrypt & unpack")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="force to consider input as non-FASTA/FASTQ\nForces Cryfa not to compact, but shuffle and encrypt.\nIf the input is FASTA/FASTQ, it is again considered as\nnon-FASTA/FASTQ, therefore, compaction will be ignored,\nbut shuffling and encryption will be performed.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode (more information)")), ToolInput(tag="in_stop_shuffle", input_type=Boolean(optional=True), prefix="--stop_shuffle", doc=InputDocumentation(doc="stop shuffling the input")), ToolInput(tag="in_number_of_threads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[NUMBER],  --thread [NUMBER]\nnumber of threads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cryfa_V0_1_0().translate("wdl", allow_empty_container=True)

