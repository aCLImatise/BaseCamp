from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Umitools_V0_1_0 = CommandToolBuilder(tool="umitools", base_command=["umitools"], inputs=[ToolInput(tag="in_subcommand", input_type=String(), position=0, doc=InputDocumentation(doc="See https://github.com/weng-lab/umitools for more information.\nFor UMI RNA-seq: First, use umitools reformat_fastq to identify\nUMIs in UMI RNA-seq. Then, use umitools mark_duplicates to mark\nPCR duplicates. For UMI small RNA-seq: Use umitools\nreformat_sra_fastq to identify UMIs and PCR duplicates. To\nsimulate UMIs, use umitools simulate."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umitools_V0_1_0().translate("wdl", allow_empty_container=True)

