from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mmseqs_Tsv2Db_V0_1_0 = CommandToolBuilder(tool="mmseqs_tsv2db", base_command=["mmseqs", "tsv2db"], inputs=[ToolInput(tag="in_add_self_matches", input_type=Boolean(optional=True), prefix="--add-self-matches", doc=InputDocumentation(doc="Artificially add entries of queries with themselves (for clustering) [0]")), ToolInput(tag="in_output_dbtype", input_type=Int(optional=True), prefix="--output-dbtype", doc=InputDocumentation(doc="Set database type for resulting database: Amino acid sequences 0, Nucl. seq. 1, Profiles 2, Alignment result 5, Clustering result 6, Prefiltering result 7, Taxonomy result 8, Indexed database 9, cA3M MSAs 10, FASTA or A3M MSAs 11, Generic database 12, Omit dbtype file 13, Bi-directional prefiltering result 14, Offsetted headers 15 [12]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Tsv2Db_V0_1_0().translate("wdl")

