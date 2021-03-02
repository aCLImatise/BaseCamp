from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Basenc_V0_1_0 = CommandToolBuilder(tool="basenc", base_command=["basenc"], inputs=[ToolInput(tag="in_base_six_four", input_type=Boolean(optional=True), prefix="--base64", doc=InputDocumentation(doc="same as 'base64' program (RFC4648 section 4)")), ToolInput(tag="in_base_six_four_url", input_type=Boolean(optional=True), prefix="--base64url", doc=InputDocumentation(doc="file- and url-safe base64 (RFC4648 section 5)")), ToolInput(tag="in_base_three_two", input_type=Boolean(optional=True), prefix="--base32", doc=InputDocumentation(doc="same as 'base32' program (RFC4648 section 6)")), ToolInput(tag="in_base_three_two_hex", input_type=Boolean(optional=True), prefix="--base32hex", doc=InputDocumentation(doc="extended hex alphabet base32 (RFC4648 section 7)")), ToolInput(tag="in_base_one_six", input_type=Boolean(optional=True), prefix="--base16", doc=InputDocumentation(doc="hex encoding (RFC4648 section 8)")), ToolInput(tag="in_base_two_ms_bf", input_type=Boolean(optional=True), prefix="--base2msbf", doc=InputDocumentation(doc="bit string with most significant bit (msb) first")), ToolInput(tag="in_base_two_lsb_f", input_type=Boolean(optional=True), prefix="--base2lsbf", doc=InputDocumentation(doc="bit string with least significant bit (lsb) first")), ToolInput(tag="in_decode", input_type=Boolean(optional=True), prefix="--decode", doc=InputDocumentation(doc="decode data")), ToolInput(tag="in_ignore_garbage", input_type=Boolean(optional=True), prefix="--ignore-garbage", doc=InputDocumentation(doc="when decoding, ignore non-alphabet characters")), ToolInput(tag="in_wrap", input_type=Int(optional=True), prefix="--wrap", doc=InputDocumentation(doc="wrap encoded lines after COLS character (default 76).\nUse 0 to disable line wrapping")), ToolInput(tag="in_z_eight_five", input_type=Boolean(optional=True), prefix="--z85", doc=InputDocumentation(doc="ascii85-like encoding (ZeroMQ spec:32/Z85);\nwhen encoding, input length must be a multiple of 4;\nwhen decoding, input length must be a multiple of 5"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenc_V0_1_0().translate("wdl", allow_empty_container=True)

