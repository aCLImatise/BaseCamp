from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maf2Daa_V0_1_0 = CommandToolBuilder(tool="maf2daa", base_command=["maf2daa"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc="sets path to MAF-File (can also be piped in, no gzip allowed here)")), ToolInput(tag="in__reads_sets", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=", -- reads             sets path to query-file in FASTA or FASTQ format (can also be gzipped)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="sets path of the reported DAA-File")), ToolInput(tag="in_top_percent", input_type=Boolean(optional=True), prefix="--topPercent", doc=InputDocumentation(doc="sets top percent of reads kept during filtering (default: 10.0)")), ToolInput(tag="in_procs", input_type=Boolean(optional=True), prefix="--procs", doc=InputDocumentation(doc="sets number of used processors (default: maximal number)")), ToolInput(tag="in_streaming_procs", input_type=Boolean(optional=True), prefix="--streamingProcs", doc=InputDocumentation(doc="sets number of used processors while input is piped-in (default: 1)")), ToolInput(tag="in_chunksize", input_type=Boolean(optional=True), prefix="--chunkSize", doc=InputDocumentation(doc="sets chunk-size of temporary MAF files (default: 500mb)")), ToolInput(tag="in_tmp", input_type=Boolean(optional=True), prefix="--tmp", doc=InputDocumentation(doc="sets folder for temporary files (default: parent folder of the resulting DAA-File)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="sets verbose mode reporting numbers of reads/references/alignments being analyzed)"))], outputs=[], container="quay.io/biocontainers/megan:6.21.2--h9ee0642_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf2Daa_V0_1_0().translate("wdl")

