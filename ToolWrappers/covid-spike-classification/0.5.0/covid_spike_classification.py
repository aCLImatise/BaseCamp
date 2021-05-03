from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Directory

Covid_Spike_Classification_V0_1_0 = CommandToolBuilder(tool="covid_spike_classification", base_command=["covid-spike-classification"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA file to use (default:\n/ref/NC_045512.fasta).")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Select which input format to expect. Choices: ab1,\nfasta, fastq. default: ab1")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="File to write result CSV and fastq files to (default:\n2021-05-03).")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress noisy output from the tools run")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="--stdout", doc=InputDocumentation(doc="Print results to stdout in addition to writing them to")), ToolInput(tag="in_silence_warnings", input_type=Boolean(optional=True), prefix="--silence-warnings", doc=InputDocumentation(doc="Silence D614G warnings.")), ToolInput(tag="in_zip_results", input_type=Directory(optional=True), prefix="--zip-results", doc=InputDocumentation(doc="Create a zipfile from the output directory instead of\nthe output directory.\n")), ToolInput(tag="in_disk", input_type=String(), position=0, doc=InputDocumentation(doc="-d, --debug           Debug mode: Keep bam file around when the parsing")), ToolInput(tag="in_crashes", input_type=String(), position=1, doc=InputDocumentation(doc="--show-unexpected     Show unexpected mutations instead of reporting 'no"))], outputs=[ToolOutput(tag="out_zip_results", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_zip_results", type_hint=File()), doc=OutputDocumentation(doc="Create a zipfile from the output directory instead of\nthe output directory.\n"))], container="quay.io/biocontainers/covid-spike-classification:0.5.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Covid_Spike_Classification_V0_1_0().translate("wdl")

