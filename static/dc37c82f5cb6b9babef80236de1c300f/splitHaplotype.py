from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean, Array

Splithaplotype_V0_1_0 = CommandToolBuilder(tool="splitHaplotype", base_command=["splitHaplotype"], inputs=[ToolInput(tag="in_range_reads_operate", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="[-end]                     range of reads to operate on.")), ToolInput(tag="in_path_input_fasta", input_type=File(optional=True), prefix="-R", doc=InputDocumentation(doc="path to input FASTA or FASTQ of reads to classify.\nthese may be uncompressed, gzip, bzip2 or xz compressed.")), ToolInput(tag="in_parentkmershistogram_haplooutputfastagz", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="parent-kmers.histogram haplo-output.fasta.gz")), ToolInput(tag="in_cr", input_type=String(optional=True), prefix="-cr", doc=InputDocumentation(doc="minimum ratio between best and second best to classify")), ToolInput(tag="in_cl", input_type=Int(optional=True), prefix="-cl", doc=InputDocumentation(doc="minimum length of output read")), ToolInput(tag="in_report_batches_processed", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="report how many batches per second are being processed")), ToolInput(tag="in_s", input_type=Array(t=String(), optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_inputs_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-S seqStore                      path to input seqStore of reads to classify.")), ToolInput(tag="in_haplo_km_ers_dot_meryl", input_type=String(), position=0, doc=InputDocumentation(doc="- haplotype specific kmers contained in a meryl database.")), ToolInput(tag="in_parent_km_ers_dot_histogram", input_type=String(), position=1, doc=InputDocumentation(doc="- a histogram of all parent kmers.")), ToolInput(tag="in_haplo_output_dot_fasta_do_tgz", input_type=String(), position=2, doc=InputDocumentation(doc="- output reads assigned to this haplotype.")), ToolInput(tag="in_option_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Reads not assigned to any haplotype are written to the file specified"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splithaplotype_V0_1_0().translate("wdl", allow_empty_container=True)

