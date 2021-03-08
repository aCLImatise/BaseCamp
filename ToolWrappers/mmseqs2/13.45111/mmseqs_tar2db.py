from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Mmseqs_Tar2Db_V0_1_0 = CommandToolBuilder(tool="mmseqs_tar2db", base_command=["mmseqs", "tar2db"], inputs=[ToolInput(tag="in_output_dbtype", input_type=Int(optional=True), prefix="--output-dbtype", doc=InputDocumentation(doc="Set database type for resulting database: Amino acid sequences 0, Nucl. seq. 1, Profiles 2, Alignment result 5, Clustering result 6, Prefiltering result 7, Taxonomy result 8, Indexed database 9, cA3M MSAs 10, FASTA or A3M MSAs 11, Generic database 12, Omit dbtype file 13, Bi-directional prefiltering result 14, Offsetted headers 15 [12]")), ToolInput(tag="in_tar_include", input_type=File(optional=True), prefix="--tar-include", doc=InputDocumentation(doc="Include file names based on this regex [.*]")), ToolInput(tag="in_tar_exclude", input_type=File(optional=True), prefix="--tar-exclude", doc=InputDocumentation(doc="Exclude file names based on this regex [^$]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Tar2Db_V0_1_0().translate("wdl")

