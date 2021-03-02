from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Kmergenie_V0_1_0 = CommandToolBuilder(tool="kmergenie", base_command=["kmergenie"], inputs=[ToolInput(tag="in_diploid", input_type=Boolean(optional=True), prefix="--diploid", doc=InputDocumentation(doc="use the diploid model (default: haploid model)")), ToolInput(tag="in_one_pass", input_type=Boolean(optional=True), prefix="--one-pass", doc=InputDocumentation(doc="skip the second pass to estimate k at 2 bp resolution (default: two passes)")), ToolInput(tag="in_largest_kmer_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="largest k-mer size to consider (default: 121)")), ToolInput(tag="in_smallest_kmer_size", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="smallest k-mer size to consider (default: 15)")), ToolInput(tag="in_interval_consecutive_kmer", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="interval between consecutive kmer sizes (default: 10)")), ToolInput(tag="in_kmer_sampling_value", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="k-mer sampling value (default: auto-detected to use ~200 MB memory/thread)")), ToolInput(tag="in_number_default_number", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (default: number of cores minus one)")), ToolInput(tag="in_prefix_default_histograms", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix of the output files (default: histograms)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="developer output of R scripts"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmergenie_V0_1_0().translate("wdl", allow_empty_container=True)

