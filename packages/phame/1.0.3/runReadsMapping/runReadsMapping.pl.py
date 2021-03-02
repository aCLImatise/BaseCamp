from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Runreadsmapping_Pl_V0_1_0 = CommandToolBuilder(tool="runReadsMapping.pl", base_command=["runReadsMapping.pl"], inputs=[ToolInput(tag="in_referencefasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<reference_fasta>")), ToolInput(tag="in_contains_reads_files", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="<query_dir> , contains reads files in the format *R[1-2].fastq, if paired, elase *.fastq")), ToolInput(tag="in_provided_write_files", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<output_directory>, if not provided will write files in current directory")), ToolInput(tag="in__of_threads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="<# of threads>")), ToolInput(tag="in_list_file", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="<list file>")), ToolInput(tag="in_aligner_bwabowtie", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="<aligner bwa|bowtie>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runreadsmapping_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

