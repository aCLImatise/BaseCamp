from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, Boolean, String

Mprobability_V0_1_0 = CommandToolBuilder(tool="mprobability", base_command=["mprobability"], inputs=[ToolInput(tag="in_assembly", input_type=File(optional=True), prefix="--assembly", doc=InputDocumentation(doc="The reference sequence from which the reads are\nsupposed to have been generated")), ToolInput(tag="in_accuracy", input_type=Float(optional=True), prefix="--accuracy", doc=InputDocumentation(doc="The probability that a base is read accurately\n(default=0.98)")), ToolInput(tag="in_delta_std_dev", input_type=Int(optional=True), prefix="--delta-std-dev", doc=InputDocumentation(doc="The number of standard deviations to include when\ncalculating the separation region probability\n(default=3)")), ToolInput(tag="in_reads_format", input_type=File(optional=True), prefix="--reads-format", doc=InputDocumentation(doc="The format ('fasta' or 'fastq') of the file\ncontaining the reads (default=fastq)")), ToolInput(tag="in_no_seeds", input_type=Boolean(optional=True), prefix="--no-seeds", doc=InputDocumentation(doc="Do not use seeds to speed up the calculations. Use\nfull dynamic programming. This is very slow")), ToolInput(tag="in_print_headers", input_type=Boolean(optional=True), prefix="--print-headers", doc=InputDocumentation(doc="Print the header of each read before its")), ToolInput(tag="in_seed_length", input_type=Int(optional=True), prefix="--seed-length", doc=InputDocumentation(doc="The length of the exact seeds (default=30)")), ToolInput(tag="in_separation_mean", input_type=Int(optional=True), prefix="--separation-mean", doc=InputDocumentation(doc="The mean length of the separation between the\npaired reads")), ToolInput(tag="in_separation_std_dev", input_type=Int(optional=True), prefix="--separation-std-dev", doc=InputDocumentation(doc="The standard deviation of the mean length of the\nseparation")), ToolInput(tag="in_use_mates", input_type=Boolean(optional=True), prefix="--use-mates", doc=InputDocumentation(doc="Calculate mate-pair probability.")), ToolInput(tag="in_probability", input_type=String(), position=0, doc=InputDocumentation(doc="-p, --num-threads=THREADS  The number of pthreads to use."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mprobability_V0_1_0().translate("wdl", allow_empty_container=True)

