from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean

Salmid_Py_V0_1_0 = CommandToolBuilder(tool="SalmID.py", base_command=["SalmID.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Single fastq.gz file input, include path to file if\nfile is not in same directory")), ToolInput(tag="in_extension", input_type=File(optional=True), prefix="--extension", doc=InputDocumentation(doc="File extension, if specified without '--input_dir',\nSalmID will attempt to ID all files with this\nextension in current directory, otherwise files in\ninput directory")), ToolInput(tag="in_input_dir", input_type=Directory(optional=True), prefix="--input_dir", doc=InputDocumentation(doc="Directory which contains data for identification, when\nnot specified files in current directory will be\nanalyzed.")), ToolInput(tag="in_coverage_taxonomy_", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc=", coverage or taxonomy, --report percentage, coverage or taxonomy\nReport either percentage ('percentage') of clade\nspecific kmers recovered, average kmer-coverage\n('cov'), or taxonomy (taxonomic species ID, plus\nobserved mean k-mer coverages and expected coverage).")), ToolInput(tag="in_thorough__mode", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="or thorough, --mode quick or thorough\nQuick [quick] or thorough [thorough] mode\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Salmid_Py_V0_1_0().translate("wdl", allow_empty_container=True)

