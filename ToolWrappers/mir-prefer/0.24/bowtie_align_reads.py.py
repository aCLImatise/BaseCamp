from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Int, Boolean

Bowtie_Align_Reads_Py_V0_1_0 = CommandToolBuilder(tool="bowtie_align_reads.py", base_command=["bowtie-align-reads.py"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference genome in fasta format. If you have multiple\nreference files, please use multipe -r options. If you\nhave aready index the reference sequences, you should\nuse the -i option.")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Use the supplied bowtie index file, instead of\nindexing the genome in the script.\nIf your genome index files are in folder\n/user/home/index, with names TAIR10.1.ebwt,\nTAIR10.2.ebwt, etc, you must use -i\n/user/home/index/TAIR10 for the -i option.")), ToolInput(tag="in_temp", input_type=Directory(optional=True), prefix="--temp", doc=InputDocumentation(doc="Temporary folder to hold the bowtie index files. If\nnot supplied, the current directory is used. Only used\nwith -r.")), ToolInput(tag="in_allowed_mismatch", input_type=Int(optional=True), prefix="--allowedmismatch", doc=InputDocumentation(doc="in bowtie. Number of mismatches allowed.\nDefault is 0.")), ToolInput(tag="in_multi_alignment", input_type=Int(optional=True), prefix="--multialignment", doc=InputDocumentation(doc="in bowtie.  Report up to <int> vaild\nalignment. Default is 20.")), ToolInput(tag="in_processor", input_type=String(optional=True), prefix="--processor", doc=InputDocumentation(doc="Use multiple threads to do alignment.")), ToolInput(tag="in_filter_unmapped", input_type=Boolean(optional=True), prefix="--filterunmapped", doc=InputDocumentation(doc="Filter out unmapped alignments in the output.")), ToolInput(tag="in_fast_an", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bowtie_Align_Reads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

