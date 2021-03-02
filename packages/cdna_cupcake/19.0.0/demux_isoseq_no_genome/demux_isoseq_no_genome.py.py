from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File

Demux_Isoseq_No_Genome_Py_V0_1_0 = CommandToolBuilder(tool="demux_isoseq_no_genome.py", base_command=["demux_isoseq_no_genome.py"], inputs=[ToolInput(tag="in_job_dir", input_type=Directory(optional=True), prefix="--job_dir", doc=InputDocumentation(doc="Job directory (if given, automatically finds required\nfiles)")), ToolInput(tag="in_hq_faf_q", input_type=String(optional=True), prefix="--hq_fafq", doc=InputDocumentation(doc="HQ isoform fasta/fastq (overridden by --job_dir if\ngiven)")), ToolInput(tag="in_cluster_csv", input_type=String(optional=True), prefix="--cluster_csv", doc=InputDocumentation(doc="Cluster report CSV (overridden by --job_dir if given)")), ToolInput(tag="in_classify_csv", input_type=String(optional=True), prefix="--classify_csv", doc=InputDocumentation(doc="Classify report CSV (overriden by --job_dir if given)")), ToolInput(tag="in_primer_names", input_type=File(optional=True), prefix="--primer_names", doc=InputDocumentation(doc="Text file showing primer sample names (default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output count filename\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output count filename\n"))], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demux_Isoseq_No_Genome_Py_V0_1_0().translate("wdl")

