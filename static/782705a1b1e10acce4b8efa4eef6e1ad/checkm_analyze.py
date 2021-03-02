from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int, String

Checkm_Analyze_V0_1_0 = CommandToolBuilder(tool="checkm_analyze", base_command=["checkm", "analyze"], inputs=[ToolInput(tag="in_ali", input_type=Boolean(optional=True), prefix="--ali", doc=InputDocumentation(doc="generate HMMER alignment file for each bin")), ToolInput(tag="in_nt", input_type=Boolean(optional=True), prefix="--nt", doc=InputDocumentation(doc="generate nucleotide gene sequences for each bin")), ToolInput(tag="in_genes", input_type=Boolean(optional=True), prefix="--genes", doc=InputDocumentation(doc="bins contain genes as amino acids instead of nucleotide contigs")), ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (default: 1)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="specify an alternative directory for temporary files")), ToolInput(tag="in_marker_file", input_type=String(), position=0, doc=InputDocumentation(doc="markers for assessing bins (marker set or HMM file)")), ToolInput(tag="in_bin_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory containing bins (fasta format)")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="directory to write output files"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Analyze_V0_1_0().translate("wdl")

