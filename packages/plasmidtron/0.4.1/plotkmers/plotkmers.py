from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Plotkmers_V0_1_0 = CommandToolBuilder(tool="plotkmers", base_command=["plotkmers"], inputs=[ToolInput(tag="in_plot_filename", input_type=File(optional=True), prefix="--plot_filename", doc=InputDocumentation(doc="Kmer to use, depends on read length [kmerplot.png]")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="Kmer to use, depends on read length [51]")), ToolInput(tag="in_max_km_ers_threshold", input_type=Int(optional=True), prefix="--max_kmers_threshold", doc=InputDocumentation(doc="Exclude k-mers occurring more than this [254]")), ToolInput(tag="in_max_km_ers_to_show", input_type=Int(optional=True), prefix="--max_kmers_to_show", doc=InputDocumentation(doc="If there are too many kmers to view, subsample\n[100000]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads [1]")), ToolInput(tag="in_keep_files", input_type=Boolean(optional=True), prefix="--keep_files", doc=InputDocumentation(doc="Keep intermediate files [False]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on debugging [0]")), ToolInput(tag="in_output_directory", input_type=String(), position=0, doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_assemblies", input_type=String(), position=1, doc=InputDocumentation(doc="FASTA files which may be gzipped"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotkmers_V0_1_0().translate("wdl", allow_empty_container=True)

